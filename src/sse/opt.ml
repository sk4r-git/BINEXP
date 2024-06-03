open Types

module Flags : Exec.PLUGIN = struct
  let name = "sse-kill-flags-at-return"
  let grammar_extension = []
  let instruction_printer = None
  let declaration_printer = None

  let extension :
      type a b.
      (module EXPLORATION_STATISTICS) ->
      (module Path.S with type t = a) ->
      (module STATE with type t = b) ->
      (module Exec.EXTENSION with type path = a and type state = b) option =
   fun _stats path state ->
    let shordlived_flags = Isa_helper.get_shortlived_flags () in
    if shordlived_flags <> [] && Options.KillFlagsAtReturn.get () then
      Some
        (module struct
          module P = (val path)
          module S = (val state)

          type path = P.t
          and state = S.t

          let initialization_callback = None
          let declaration_callback = None
          let instruction_callback = None

          let process_handler :
              type a. (module Ir.GRAPH with type t = a) -> a -> unit =
           fun graph ->
            let module G = (val graph) in
            fun graph ->
              G.iter_exits
                (fun vertex ->
                  if G.is_new_vertex graph vertex then
                    match G.node graph vertex with
                    | Goto { tag = Return; _ }
                    | Terminator (Jump { tag = Return; _ }) ->
                        List.iter
                          (fun var ->
                            ignore (G.insert_before graph vertex (Forget var)))
                          shordlived_flags
                    | _ -> ())
                graph

          let process_callback = Some process_handler
          let builtin_callback = None
          let builtin_printer = None
          let at_exit_callback = None
        end)
    else None
end

let () = Exec.register_plugin (module Flags)
