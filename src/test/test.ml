open Test_options



module T = Smt_external.Translate
(* module Target_graph = Target.Target_graph
module OrderedDhunk = Target.OrderedDhunk
open Target *)
include Target
(* include Target_graph *)

(* let invert a =
  let res = ref [] in
  List.iter(fun e ->
      res := e :: !res
    )a;
  !res *)


let get_cwe name : string list = 
  match name with 
  | "CWE131" -> CWE131.sinks
  | "CWE134" -> CWE134.sinks
  | _ -> []


let test_first_instr cfg addr : bool =
  let just_call = ref true in 
  let back_list = Ghidra_cfg.pred_e cfg addr in
  List.iter (fun a ->
      let k : Ghidra_cfg.kind = match a with 
        | (_, kind, _) -> kind
      in 
      let called = match k with 
        | Call -> true
        | _ -> false
      in if not called then just_call := false) back_list;
  !just_call



let rec get_pred ims addr : Virtual_address.t =
  let res = try Virtual_address.Htbl.find ims addr with
    | Not_found -> "not a valid address"
  in
  if String.equal res "not a valid address" then get_pred ims (addr-1)
  else addr

let rec get_next ims addr : Virtual_address.t =
  let res = try Virtual_address.Htbl.find ims addr with
    | Not_found -> "not a valid address"
  in
  if String.equal res "not a valid address" then get_next ims (addr+1)
  else addr


let rec get_block_delim_e cfg ims addr =
  let na = get_next ims (addr + 1) in
  if test_first_instr cfg na then addr
  else get_block_delim_e cfg ims na




let rec get_block_delim_b cfg ims addr : Virtual_address.t =
  let na = get_pred ims (addr - 1) in
  if test_first_instr cfg na then na
  else get_block_delim_b cfg ims na


let get_block_delim cfg ims addr : Virtual_address.t list = 
  let b : Virtual_address.t = get_block_delim_b cfg ims addr in
  let e : Virtual_address.t = get_block_delim_e cfg ims b in
  [b; e]




let get_entry_list sink ims : Virtual_address.t list =
  let target_addrs : Virtual_address.t list ref = ref [] in
  Virtual_address.Htbl.iter(fun cle valeur ->
      if let s = Printf.sprintf "call %s" sink
        in String.equal s valeur then 
        (target_addrs := cle :: !target_addrs)
    )ims;
  !target_addrs






let fetch_cfg target cfg inst_cfg =
  (* Instr_cfg.iter_vertex(fun v -> 
    Printf.printf "0x%x\n" (Instr_cfg.V.addr v)
  )inst_cfg; *)

  let dhunk_f : Target_graph.t = Target_graph.create() in
  let low = Target.get_bl target in
  let high = Target.get_el target in
  Ghidra_cfg.iter_vertex(fun v ->
      if (v >= low && v <= high) then (
        let succ_l = Ghidra_cfg.succ cfg v in
        List.iter(fun node ->
            if (node >= low && node <= high) then (
              let edge = Ghidra_cfg.find_edge cfg v node in
              let k = match edge with
                | (_, x, _) -> x
              in
              match Instr_cfg.mem_vertex_a inst_cfg v with 
              | None -> (Printf.printf "low = 0x%x, high = 0x%x\n" low high;
                         Printf.printf "from 0x%x to 0x%x\n" v node;
                         raise (Failure "bug vertex not found\n")   )
              | Some x -> let vinstr = x in
                match Instr_cfg.V.inst vinstr with
                | None -> raise (Failure "impossible with v = 0x\n" )
                | Some x -> let vhunk = x.Instruction.dba_block in

                  match Instr_cfg.mem_vertex_a inst_cfg node with 
                  | None -> raise (Failure "Vertex non trouve\n")
                  | Some x -> let nodeinstr = x in
                    match Instr_cfg.V.inst nodeinstr with
                    | None -> raise (Failure "impossible with node = 0x\n")
                    | Some x -> let nodehunk = x.Instruction.dba_block in
                      let v_b : OrderedDhunk.t = {dhunk = vhunk; addr = v} in
                      let v_e : OrderedDhunk.t = {dhunk = nodehunk; addr = node} in 
                      match k with
                      | Fallthrough -> 
                        Target_graph.add_edge_e dhunk_f (Target_graph.E.create v_b Fallthrough  v_e)
                      | Call -> 
                        Target_graph.add_edge_e dhunk_f (Target_graph.E.create v_b Call v_e)
                      | Branch -> 
                        Target_graph.add_edge_e dhunk_f (Target_graph.E.create v_b Branch v_e)
                      | Presumed -> 
                        Target_graph.add_edge_e dhunk_f (Target_graph.E.create v_b Presumed v_e)
                      | _ -> Target_graph.add_edge_e dhunk_f (Target_graph.E.create v_b Return v_e)
            )
          )succ_l
      )
    )cfg;
  dhunk_f






let rec fetch_bbl target = 
  let bbl_v = Taint.find_v target target.bbl in
  let bck_lst = Target_graph.pred_e target.dhunk_cfg bbl_v in
  if (List.length bck_lst != 1) then target
  else 
    let pred_e = List.nth bck_lst 0 in
    let pred_v = List.nth (Target_graph.pred target.dhunk_cfg bbl_v) 0 in
    let fw_pred_lst = Target_graph.succ target.dhunk_cfg pred_v in
    let n_fw_pred_lst = List.length fw_pred_lst in
    if n_fw_pred_lst != 1 then target
    else 
      let k = match pred_e with
        | (_, x, _) -> x
      in let ft = match k with
          | Fallthrough -> (let target = Target.bbl target pred_v.addr in
                            fetch_bbl target)
          | _ -> target
      in ft



let prefetch cfg ims path (inst : Instr_cfg.t) =
  let tl_sink = get_cwe path in 
  let target_list : Target.t list ref = ref [] in
  List.iter(fun sink -> 
    let target_addrs = get_entry_list sink ims in
    List.iter(fun trg ->
        let in_set = ref false in
        Instr_cfg.iter_vertex(fun at -> 
          let v = Instr_cfg.V.addr at in
          if trg == v then in_set := true
        )inst;
        if !in_set then (
        let bound_target_addrs = get_block_delim cfg ims trg in
        let new_t : Target.t = Target.empty in
        let new_t = Target.limit_b new_t (List.nth bound_target_addrs 0) in
        let new_t = Target.limit_e new_t (List.nth bound_target_addrs 1) in
        let cf = fetch_cfg new_t cfg inst in 
        let new_t = Target.dhunk_cfg new_t cf in
        let new_t = Target.sink_addr new_t trg in
        let new_t = Target.sink new_t sink in
        let new_t = fetch_bbl new_t in
        target_list := new_t :: !target_list;
        )
      )target_addrs
    )tl_sink;
  !target_list




let fetch () : Target.t list =
  let whole_prog = Disasm.disassemble Infos.default in
  let cfg, ims = Ghidra_cfg.import () in
  if Vuln_Type.is_set () then 
    let cwe = match Vuln_Type.get_opt () with
      | Some cwe_name -> cwe_name
      | _ -> "pas de cwe spécifiée\n"
    in
      let targets = prefetch cfg ims cwe whole_prog.instructions in
      targets

  else 
    (Printf.printf "no cwe specified\n";
     []) 





let run () = 
  if is_enabled () then(
    if Vuln_Type.is_set () then 
      let cwe = match Vuln_Type.get_opt () with
        | Some cwe_name -> cwe_name
        | _ -> "pas de cwe spécifiée\n"
      in
    let targets = fetch () in
    if List.length targets <> 0 then
      (
        match cwe with
        | "CWE131" -> CWE131.run targets
        | "CWE134" -> CWE134.run targets
        | _ -> failwith "not"
        (* let _good_target : Target.t ref = ref Target.empty in *)
        (* List.iter(fun targ -> 
        
        (* let module TS = Test_solv ((val Smt_solver.get_solver(): Smt_sig.Solver)) in
        let _res_sym = TS.eval targ in *)
        Printf.printf "rien\n"

      )targets *)
      )
    else 
      Printf.printf "no satisfiing targets find\n")

let _ = Cli.Boot.enlist ~name:"test" ~f:run
(* avec formula, renommer a la main pour la taille dans sse/formula
   sse/symbolic defini les wrapper de state over smtformula
   pour pas avoir de probleme de taille *)
(* dba -> ir -> fiber *)
(* exec .exec *)
(* assertion 
   pp_smt ->  resultat *)
(* page 27 yaelle *)