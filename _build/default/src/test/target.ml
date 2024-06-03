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

module OrderedDhunk =
struct 
  type t = vert
  let compare x y = Virtual_address.compare x.addr y.addr
  let equal x y = Virtual_address.equal x.addr y.addr
end

module Target_graph = 
  Graph.Imperative.Digraph.ConcreteBidirectionalLabeled
    (struct
      type t = OrderedDhunk.t

      let compare = OrderedDhunk.compare
      let equal = OrderedDhunk.equal
      let hash = Hashtbl.hash
    end)
    (struct 
      type t = kind

      let default = Fallthrough
      let compare = compare
    end)

  include Target_graph

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

let empty = 
  {
    limit_b : Virtual_address.t = 0;
    limit_e : Virtual_address.t = 0;
    source_addr : Virtual_address.t = 0;
    sink_addr : Virtual_address.t = 0;
    sink : string = "";
    dhunk_cfg = Target_graph.create();
    bbl : Virtual_address.t = 0;
    paths : OrderedDhunk.t list list = [];
  }

let limit_b t l = {t with limit_b = l}
let get_bl t = t.limit_b
let limit_e t l = {t with limit_e = l}
let get_el t = t.limit_e
let source_addr t a = {t with source_addr = a}
let sink_addr t a = {t with sink_addr = a; bbl = a}
let sink t s = {t with sink = s}
let dhunk_cfg t d = {t with dhunk_cfg = d}
let bbl t a = {t with bbl = a}
let paths t p = {t with paths = p}
let print_target t = 
    Printf.printf "#########  TARGET  #########\n";
    Printf.printf "target function from 0x%x to 0x%x\n" t.limit_b t.limit_e;
    Printf.printf "with the sink %s " t.sink;
    Printf.printf "at address 0x%x\n" t.sink_addr;
    Printf.printf "bbl addr is 0x%x\n" t.bbl

let print_target_dba t =
    Target_graph.iter_vertex(fun at ->
    Printf.printf "at addr 0x%x : \n" at.addr;
    Dhunk.pp Format.std_formatter at.dhunk;
    Printf.printf "\n") t.dhunk_cfg


let print_paths t =
    print_target t;
    Printf.printf "paths from source at 0x%x to bbl at 0x%x\n" t.source_addr t.bbl;
    List.iter(fun p ->
    List.iter(fun i -> 
      Printf.printf "0x%x   " i.addr
    )p;
    Printf.printf "\n"
    )t.paths;
    Printf.printf "\n"

