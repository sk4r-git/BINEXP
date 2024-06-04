val prefetch : Ghidra_cfg.t -> string Virtual_address.Htbl.t -> string -> Instr_cfg.t -> Target.t list
val get_block_delim : Ghidra_cfg.t -> string Virtual_address.Htbl.t -> int -> int list
val get_entry_list : string -> string Virtual_address.Htbl.t -> int list
val fetch_cfg : Target.t -> Ghidra_cfg.t -> Instr_cfg.t -> Target.Target_graph.t
val fetch_bbl : Target.t -> Target.t