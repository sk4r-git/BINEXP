let sinks = ["malloc"]

module T = Smt_external.Translate

module Test_solv (Solver : Smt_sig.Solver) = struct


  let rec follow_if dba ifx : Virtual_address.t =
    let temoinstr = Array.get dba ifx in
    match temoinstr with
    | Dba.Instr.SJump (idj, _tag) -> (
        match idj with
        | JInner x -> follow_if dba x
        | JOuter at -> at.base
      )
    | Dba.Instr.DJump (_exp, tag) -> (
        match tag with 
        | Call at -> at.base
        | _ -> 0
      )
    | _ -> let ifx = ifx + 1 in
      follow_if dba ifx


  let rec inside_dba (sym : Smt_symbolic.State.t) (dap :Target.OrderedDhunk.t) ndba idx = 
    (* Printf.printf "\n\n";

        Smt_symbolic.State.pp Format.std_formatter sym;
        Printf.printf "\n\n"; *)
    let inst = Array.get dap.dhunk.instructions idx in
    (* Formula_pp.pp_formula Format.std_formatter sym.fml;
        Printf.printf "\n\n"; *)
    match inst with 
    | Dba.Instr.Assign (lhs, expr, _id) -> 
      (* Printf.printf "assign\n"; *)
        inside_dba (T.assign lhs expr sym) dap ndba (idx+1)

    | Dba.Instr.Stop _state_opt -> 
      (* Printf.printf "stop\n"; *)
        failwith ("probleme technique sur une inst stop\n")
        (*normalement on rencontre jamais ça donc osef*)
    | Dba.Instr.Assume (cond, _id) -> 
      (* Printf.printf "assume\n"; *)
        inside_dba (T.assume cond sym) dap ndba (idx+1)
      
    | Dba.Instr.Assert (cond, _id) -> 
      (* Printf.printf "assert\n"; *)
        inside_dba (T.assume cond sym) dap ndba (idx+1)
      
    | Dba.Instr.Undef (lhs, _id) -> 
      (* Printf.printf "undef\n"; *)
        inside_dba (T.havoc lhs sym) dap ndba (idx+1)
      
    | Dba.Instr.Nondet (lhs, _id) -> 
      (* Printf.printf "nondet\n"; *)
        inside_dba (T.havoc lhs sym) dap ndba (idx+1)
      
    | Dba.Instr.SJump (e, _t) -> 

        (match e with
        | JInner x -> inside_dba sym dap ndba x
        | JOuter _at -> sym)
      
    | Dba.Instr.DJump (_e, _tag) -> 

        sym
      
    | Dba.Instr.If (e, t, n) -> 
      let sym_if = sym in
      let sym_if_not = sym in
      let sym_if = T.assume e sym_if in
      let e_neg = Dba.Expr.lognot e in
      let sym_if_not = T.assume e_neg sym_if_not in

        (let jtv = match t with 
          | JInner x -> x
          | JOuter addr -> addr.base in

        let at_i : Virtual_address.t = follow_if dap.dhunk.instructions jtv in
        let at_n : Virtual_address.t = follow_if dap.dhunk.instructions n in

        if at_i = ndba then (
          inside_dba sym_if dap ndba jtv
        )else if at_n = ndba then (
          inside_dba sym_if_not dap ndba n
        )else (
          failwith ("probleme technique\n")
        )
      )


  let fill_sym sym path ep =
    let pathlen = List.length path in
    let idx = ref 0 in
    let sym_final = ref sym in

    
    List.iter(fun dap -> 
        idx := !idx+1;
        if (!idx = 2) then (
          let ep = match (Smt_symbolic.State.get_bv ep Size.Bit.bits64 !sym_final) with
          | (x, _) -> x in
          sym_final := Smt_symbolic.State.declare "cond" (BvSort 64) !sym_final;
          let cond = match (Smt_symbolic.State.get_bv "cond" Size.Bit.bits64 !sym_final) with
          | (x, _) -> x in 
          sym_final := Smt_symbolic.State.constrain (Formula.mk_bv_equal ep cond) !sym_final
          );
        if (!idx >= -1) then (

          let next = ref 0 in
          if (!idx < pathlen) then (
            let nat : Target.OrderedDhunk.t = (List.nth path !idx) in
            next := nat.addr
          );
          sym_final := (inside_dba !sym_final dap !next 0)
        )

      )path;
    !sym_final


  let eval (target : Target.t) (reg : string list) = 
    let cpt = ref 0 in
    List.iter(fun p0 -> 
    let state = Smt_symbolic.State.create () in
    let from_reg0 = (List.nth reg !cpt) in
    if String.equal from_reg0 "rax" then(
      cpt := !cpt+1; 
      let to_reg0 = "rdi" in
      let sym = fill_sym state p0 from_reg0 in


      let formula = Smt_symbolic.State.formula sym in
      let to_reg = match (Smt_symbolic.State.get_bv to_reg0 Size.Bit.bits64 sym) with
        | (x, _) -> x in
      Formula_pp.pp_bv_term Format.std_formatter to_reg;

      let _keep = Formula_utils.bv_term_variables to_reg in
      let solver = Solver.open_session () in
      Formula.iter_forward (Solver.put solver) formula;

      let bvcd = Bitvector.create (Z.of_int64 0L : Z.t) 64 in
      let bvcd1 = Formula.mk_bv_cst bvcd in
      Solver.put solver Formula.(mk_assert (mk_bv_equal bvcd1 to_reg));


      match Solver.check_sat solver with
      | SAT -> (Printf.printf "sat\n";

        let from_reg = match (Smt_symbolic.State.get_bv "cond" Size.Bit.bits64 sym) with
        | (x, _) -> x in
          let bvres = Solver.get_bv_value solver to_reg in
          let bigi = "0u" ^ Z.to_string (Bitvector.value_of bvres) in
          let bigin1 = Int64.of_string bigi in
          let bvres = Solver.get_bv_value solver from_reg in
          let bigi = "0u" ^ Z.to_string (Bitvector.value_of bvres) in
          let bigin2 = Int64.of_string bigi in
        Printf.printf "\n at : 0x%x\n" target.sink_addr;
        Printf.printf "so to get %Ld in the " bigin1;
        Printf.printf "%s of the sink %s\n" to_reg0 target.sink;
        Printf.printf "we need to have %Ld in the " bigin2;
        Printf.printf "%s of the source \"à det\"\n" from_reg0
      )
      | UNSAT -> Printf.printf "unsat\n"
      | TIMEOUT | UNKNOWN -> Printf.printf "unknown\n"; 
    )
    )target.paths
end

let run (targ : Target.t list) = 
  List.iter(fun tar ->
    let arg = Taint.back tar "rdi" in
    match arg with 
    | Const x -> (Printf.printf "const %d\n" x;Target.print_paths tar)
    | Rel x -> (Printf.printf "rel %d\n" x;
      let paths, regs, ats = Taint.from_what tar x in
      let new_pl = ref [] in
      let i = ref 0 in
      List.iter(fun path -> 
          let r = List.nth regs !i in
          let at = List.nth ats !i in
          Printf.printf "%s 0x%x\n" r at;
          let before = ref true in
          let np = ref [] in
          List.iter(fun (elt : Target.OrderedDhunk.t) ->
            if !before then(
              if elt.addr == at then(
                before := false;
                np := elt :: !np
              )
            )else(
              np := elt :: !np
            )
          )path;
          let np = Taint.invert !np in
          new_pl := np :: !new_pl
        )paths;
      let tar = Target.paths tar !new_pl in
      let tar = Target.source_addr tar (Target.get_bl tar) in
      (* Target.print_paths tar; *)

      let module TS = Test_solv ((val Smt_solver.get_solver(): Smt_sig.Solver)) in
      let _res_sym = TS.eval tar regs in
      Printf.printf "fin target\n\n\n"
      ) 
    | Nondet -> (Printf.printf "nondet\n";Target.print_paths tar);

  )targ

