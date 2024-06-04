include Target


let invert lst =
  let res = ref [] in
  List.iter(fun elt -> 
    res := elt :: !res
  )lst;
  !res

let rec is_concerned expr arg_q =
  let neutral_q = ref arg_q in
  match expr with
  | Dba.Expr.Var {name; size; _} -> (
      let _s = size in
      (name, !neutral_q)
    )
  | Dba.Expr.Load (_size, _endian, expr, _array) -> (
      is_concerned expr !neutral_q
    )
  | Dba.Expr.Unary (Dba.Unary_op.Uext _n, expr) -> is_concerned expr !neutral_q
  | Dba.Expr.Unary (Dba.Unary_op.Sext _n, expr) -> is_concerned expr !neutral_q
  | Dba.Expr.Unary (Dba.Unary_op.Restrict { Interval.lo = _i; Interval.hi = _j }, expr) -> is_concerned expr !neutral_q
  | Dba.Expr.Unary (_unary_op, expr) -> is_concerned expr !neutral_q
  | Dba.Expr.Binary (_binary_op, lexpr, rexpr) -> (
      match (lexpr, rexpr) with
      | (Dba.Expr.Cst _v1, Dba.Expr.Cst _v2) -> ("constante", !neutral_q)
      | (Dba.Expr.Cst v1, Dba.Expr.Var {name; size; _}) ->
        let _s = size in
        let v : int = Bitvector.to_int v1 in
        if name = "rbp" then ("rbp", Rel_rbp v)
        else if name = "rip" then ("rip", Rel_rip v)
        else is_concerned rexpr !neutral_q
      | (Dba.Expr.Cst _v1, _) -> is_concerned rexpr !neutral_q
      | (Dba.Expr.Var {name; size; _}, Dba.Expr.Cst v2) ->
        let _s = size in
        let v : int = Bitvector.to_int v2 in
        if name = "rbp" then ("rbp", Rel_rbp v)
        else if name = "rip" then ("rip", Rel_rip v)
        else is_concerned lexpr !neutral_q
      | (_, Dba.Expr.Cst _v2) -> is_concerned lexpr !neutral_q
      | (_, _) -> ("don't know", !neutral_q)
    ) 
  | Dba.Expr.Cst value -> ("constante", (Const (Bitvector.to_int value)))
  | Dba.Expr.Ite (_cond, _then_expr, _else_expr) -> ("impossible", !neutral_q)


let is_concerned_l lval arg_q =
  match lval with
  | Dba.LValue.Var _var -> Nondet
  | Dba.LValue.Restrict (_var, _) -> Nondet
  | Dba.LValue.Store (_, _, exp, _) -> 
    let resc = is_concerned exp arg_q in
    let finarg = match resc with
    | (_, x) -> x in
    finarg
  


let find_v target addr =
  let res_v : Target_graph.V.t ref = ref {dhunk = Dhunk.empty; addr = 0} in
  Target_graph.iter_vertex(fun ver ->
      if ver.addr = addr then res_v := ver
    )target.dhunk_cfg;   
  !res_v
  

let back (target : Target.t) (arg_s : string) : Target.arg =
  let dba_list = ref [] in
  let ptr = ref target.bbl in
  while !ptr <> target.sink_addr do
    let dunk_p = find_v target !ptr in
    let succ_p = List.nth (Target_graph.succ target.dhunk_cfg dunk_p) 0 in
    let instr = dunk_p.dhunk.instructions in
    Array.iter(fun ins->
        dba_list := ins :: !dba_list
      )instr;
    ptr := succ_p.addr
  done;

  let neutral_arg = Nondet in
  let res = ref (arg_s, neutral_arg) in 
  let qual = ref neutral_arg in
  List.iter(fun ins ->
      match ins with 
      | Dba.Instr.Assign (lval, expr, _) -> 
        (match lval with
          | Dba.(LValue.Var {name; size; _}) ->
            let _s = size in 
            let name_p = match !res with
              | (a, _) -> a in
            if String.equal name name_p && (not (String.equal name "rbp")) then (
              let con = is_concerned expr !qual in    
              res := con;
            )
          | _ -> ())
      | _ -> ()
    )!dba_list;
  let final = match !res with 
  | (_, qu) -> qu in
  final




let rec dfs target source path path_list =
  let tot_list = ref path_list in
  let tot = ref path in
  tot := source :: !tot;
  if source.addr <> target.sink_addr then 
    (let next = Target_graph.succ target.dhunk_cfg source in
     List.iter(fun n -> 
        let visited : bool ref = ref false in
        List.iter(fun pathed ->
            if pathed.addr == n.addr then visited := true
        )path;
        if not !visited then (
          let new_paths = dfs target n !tot path_list in
          List.iter(fun p ->
            tot_list := p :: !tot_list
          )new_paths;
        )
      )next
    )
  else (
    tot_list := !tot :: !tot_list
  );
  !tot_list








(* let id_lval expr =
  match expr with
  | Dba.Expr.Binary (_binary_op, lexpr, rexpr) -> 
    (let l = match lexpr with
        | Dba.Expr.Var {name; size; _} -> let _s = size in name
        | _ -> "fail" in
     let r = match rexpr with
       | Dba.Expr.Cst (value) -> Bitvector.to_int value
       | _ -> 0 in
     if String.equal l "rbp" then (l, Rel r)
     else (l, Nondet))
  | _ -> ("fail", Nondet) *)


(* let update_taint lval expr tainted = 
  match expr with
  | Dba.Expr.Var {name; size; _} -> (*Printf.printf "expr = var\n";*)
    let _s = size in
    let tainted2 = ref tainted in
    let nt = match List.nth tainted 0 with
      | (x, (_, _)) -> x  
    in
    if String.equal name nt then
      (match lval with
       | Dba.LValue.Store (_s, _e, ex, _a) ->
         let new_t = id_lval ex in
         tainted2 := new_t :: !tainted2
       | _ -> () 
      );
    !tainted2
  (* | _ -> tainted *)
  (* | Dba.Expr.Load (_size, _endian, _expr, _array) -> Printf.printf "expr = load\n"; tainted
     | Dba.Expr.Unary (Dba.Unary_op.Uext _n, _expr) -> Printf.printf "expr = u1\n"; tainted
     | Dba.Expr.Unary (Dba.Unary_op.Sext _n, _expr) -> Printf.printf "expr = u2\n"; tainted *)
  | Dba.Expr.Unary (Dba.Unary_op.Restrict { Interval.lo = _i; Interval.hi = _j }, expr) -> (*Printf.printf "expr = u3\n";*)
    let name = match expr with
      | Dba.Expr.Var { name; size; _} -> let _s = size in name
      | _ -> "fail"
    in
    let tainted2 = ref tainted in
    let nt = match List.nth tainted 0 with
      | (x, (_, _)) -> x  
    in
    if String.equal name nt then
      (match lval with
       | Dba.LValue.Store (_s, _e, ex, _a) ->
         let new_t = id_lval ex in
         tainted2 := new_t :: !tainted2
       | _ -> ()
      );
    !tainted2 

  (* | Dba.Expr.Unary (_unary_op, _expr) -> Printf.printf "expr = u4\n"; tainted
     | Dba.Expr.Binary (_binary_op, _lexpr, _rexpr) -> Printf.printf "expr = bin\n"; tainted 
     | Dba.Expr.Cst _value -> Printf.printf "expr = cst\n"; tainted
     | Dba.Expr.Ite (_cond, _then_expr, _else_expr) -> Printf.printf "expr = ite\n"; tainted *)
     | _ -> tainted
 *)






(* let data_dep target : (string * string * int * bool) list =
  let sa = target.source.args in
  let ss = target.sink.args in
  let paths = target.paths in
  let result = ref [] in
  List.iter(fun a->
      for i = 0 to ((List.length ss)-1) do (
        for j = 0 to ((List.length paths)-1) do
          (* Printf.printf "### DEBUT CHEMIN \n"; *)
          let argq = List.nth target.sink.args_q i in
          let arg = List.nth target.sink.args i in
          let new_r = match argq with
            | (Rel, n) ->
              let tainted = ref [(a, (Nondet, 0))] in
              let dba_list = ref [] in
              List.iter(fun v -> 
                  if v <> List.nth (List.nth paths j) 0 && 
                     v <> List.nth (List.nth paths j) (List.length (List.nth paths j) -1) 
                  then (
                    let instr = v.dhunk.instructions in
                    Array.iter(fun ins->
                        dba_list := ins :: !dba_list
                      )instr)
                )(List.nth paths j);
              let dba_list_dans_le_bon_sens = invert !dba_list in
              List.iter(fun i ->
                  match i with 
                  | Dba.Instr.Assign (lval, expr, _) -> (
                      tainted := update_taint lval expr !tainted
                    )
                  (* | Dba.Instr.SJump (_, _)->  Printf.printf "\n" (*instr suivante, osef*)
                     | Dba.Instr.DJump (_, _)->  Printf.printf "\n" (*???*)
                     | Dba.Instr.If (_, _, _)->  Printf.printf "\n" (*rien car le chemin est deja 'tracé*)
                     | Dba.Instr.Stop (_)->      Printf.printf "\n" (*???*)
                     | Dba.Instr.Assert (_, _)-> Printf.printf "\n" (*???*)
                     | Dba.Instr.Assume (_, _)-> Printf.printf "\n" (*???*)
                     | Dba.Instr.Nondet (_, _)-> Printf.printf "\n" (*osef*)
                     | Dba.Instr.Undef (_, _)->  Printf.printf "\n" osef  *)
                  | _ -> ()
                )dba_list_dans_le_bon_sens;
              let res = ref false in
              List.iter(fun t ->
                  match t with 
                  | ("rbp", (Rel, n2)) -> if n == n2 then res := true
                  | _ -> ()
                )!tainted;
              (a, arg, j, !res)
            | (_, _) -> (a, arg, j, false) in
          result := new_r :: !result;
          (* Printf.printf "### FIN CHEMIN \n" *)
        done
      )done 
    )sa;
  !result *)







let from_what (target : Target.t) (n : int) : Target.OrderedDhunk.t list list * string list * Virtual_address.t list=
  let regs = ref [] in
  let ats = ref [] in
  let paths = dfs target (find_v target (get_bl target)) [] [] in
  let paths_concerned = ref [] in
  List.iter(fun path -> 
    let path = invert path in
    let find = ref false in
    (* let lp = List.length path in
    Printf.printf "len p = %d\n" lp; *)
    List.iter(fun p ->
      if (not !find) then(
        Array.iter(fun i ->
        match i with
        | Dba.Instr.Assign (lval, expr, _) -> 
                (* Dba_printer.Ascii.pp_lhs Format.std_formatter lval; *)
                let test = is_concerned_l lval Nondet in
                (match test with
                | Rel_rbp x -> 
                    (if x == n then(
                      let (reg, _void) = is_concerned expr Nondet in
                      (* Printf.printf "for x = %d -> %s\n" x reg; *)
                      regs := reg :: !regs;
                      paths_concerned := path :: !paths_concerned;
                      ats := p.addr :: !ats;
                      find := true
                      )
                  )
                | _ -> Printf.printf "");
        | _ -> Printf.printf ""
        )p.dhunk.instructions
      )
    )path;
  )paths;
  let l = List.length paths in
  let lp = List.length !paths_concerned in
  Printf.printf "%d %d\n" l lp;
  !paths_concerned, !regs, !ats
  