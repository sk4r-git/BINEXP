type kind =
  | Fallthrough
  | Branch
  | Call
  | Return
  | Presumed


type vert = {
  dhunk : Dhunk.t;
  addr : Virtual_address.t;
}

type arg = | Const of int
           | Rel of int
           | Nondet

module OrderedDhunk : sig
    type t = vert
end

module Target_graph : sig
  include Graph.Sig.I
  with type V.t = OrderedDhunk.t
  and type E.t = OrderedDhunk.t * kind * OrderedDhunk.t
  and type E.label = kind
end


type t = {
  limit_b : Virtual_address.t;
  limit_e : Virtual_address.t;
  source_addr : Virtual_address.t;
  sink_addr : Virtual_address.t;
  sink : string;
  dhunk_cfg : Target_graph.t;
  bbl : Virtual_address.t;
  paths : OrderedDhunk.t list list;
}

val empty : t
val limit_b : t -> Virtual_address.t -> t
val get_bl : t -> Virtual_address.t 
val limit_e : t -> Virtual_address.t -> t
val get_el : t -> Virtual_address.t
val source_addr : t -> Virtual_address.t -> t
val sink_addr : t -> Virtual_address.t -> t
val sink : t -> string -> t
val dhunk_cfg : t -> Target_graph.t -> t
val bbl : t -> Virtual_address.t -> t
val paths : t -> OrderedDhunk.t list list -> t
val print_target : t -> unit
val print_target_dba : t -> unit
val print_paths : t -> unit