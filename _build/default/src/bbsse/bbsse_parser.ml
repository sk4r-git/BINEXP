
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | UNREACHABLE
    | SKIP
    | PROCESS
    | OPAQUE
    | IS
    | FALLTHROUGH
    | EXPECT
    | EOF
    | CLEAR
    | CALL
    | BRANCH
    | AT
    | ADDRESS of (
# 24 "src/bbsse/bbsse_parser.mly"
       (Z.t)
# 27 "src/bbsse/bbsse_parser.ml"
  )
  
end

include MenhirBasics

type ('s, 'r) _menhir_state = 
  | MenhirState00 : ('s, _menhir_box_directives) _menhir_state
    (** State 00.
        Stack shape : .
        Start symbol: directives. *)

  | MenhirState18 : (('s, _menhir_box_directives) _menhir_cell1_directive, _menhir_box_directives) _menhir_state
    (** State 18.
        Stack shape : directive.
        Start symbol: directives. *)


and ('s, 'r) _menhir_cell1_directive = 
  | MenhirCell1_directive of 's * ('s, 'r) _menhir_state * (Bbsse_types.Directive.t)

and _menhir_box_directives = 
  | MenhirBox_directives of (Bbsse_types.Directive.t list) [@@unboxed]

let _menhir_action_01 =
  fun _1 _1_inlined1 _2 _3 addr ->
    let status =
      let _1 = _1_inlined1 in
      
# 48 "src/bbsse/bbsse_parser.mly"
    ( Bbsse_types.Status.Opaque true )
# 59 "src/bbsse/bbsse_parser.ml"
      
    in
    let address = 
# 44 "src/bbsse/bbsse_parser.mly"
    ( Virtual_address.of_bigint addr )
# 65 "src/bbsse/bbsse_parser.ml"
     in
    (
# 37 "src/bbsse/bbsse_parser.mly"
    ( Bbsse_types.Directive.ExpectAt (address, status) )
# 70 "src/bbsse/bbsse_parser.ml"
     : (Bbsse_types.Directive.t))

let _menhir_action_02 =
  fun _1 _1_inlined1 _2 _3 addr ->
    let status =
      let _1 = _1_inlined1 in
      
# 50 "src/bbsse/bbsse_parser.mly"
    ( Bbsse_types.Status.Opaque false )
# 80 "src/bbsse/bbsse_parser.ml"
      
    in
    let address = 
# 44 "src/bbsse/bbsse_parser.mly"
    ( Virtual_address.of_bigint addr )
# 86 "src/bbsse/bbsse_parser.ml"
     in
    (
# 37 "src/bbsse/bbsse_parser.mly"
    ( Bbsse_types.Directive.ExpectAt (address, status) )
# 91 "src/bbsse/bbsse_parser.ml"
     : (Bbsse_types.Directive.t))

let _menhir_action_03 =
  fun _1 _1_inlined1 _3 addr ->
    let status =
      let _1 = _1_inlined1 in
      
# 52 "src/bbsse/bbsse_parser.mly"
    ( Bbsse_types.Status.Unreachable )
# 101 "src/bbsse/bbsse_parser.ml"
      
    in
    let address = 
# 44 "src/bbsse/bbsse_parser.mly"
    ( Virtual_address.of_bigint addr )
# 107 "src/bbsse/bbsse_parser.ml"
     in
    (
# 37 "src/bbsse/bbsse_parser.mly"
    ( Bbsse_types.Directive.ExpectAt (address, status) )
# 112 "src/bbsse/bbsse_parser.ml"
     : (Bbsse_types.Directive.t))

let _menhir_action_04 =
  fun _1 _1_inlined1 _3 addr ->
    let status =
      let _1 = _1_inlined1 in
      
# 54 "src/bbsse/bbsse_parser.mly"
    ( Bbsse_types.Status.Clear )
# 122 "src/bbsse/bbsse_parser.ml"
      
    in
    let address = 
# 44 "src/bbsse/bbsse_parser.mly"
    ( Virtual_address.of_bigint addr )
# 128 "src/bbsse/bbsse_parser.ml"
     in
    (
# 37 "src/bbsse/bbsse_parser.mly"
    ( Bbsse_types.Directive.ExpectAt (address, status) )
# 133 "src/bbsse/bbsse_parser.ml"
     : (Bbsse_types.Directive.t))

let _menhir_action_05 =
  fun _1 addr ->
    let address = 
# 44 "src/bbsse/bbsse_parser.mly"
    ( Virtual_address.of_bigint addr )
# 141 "src/bbsse/bbsse_parser.ml"
     in
    (
# 39 "src/bbsse/bbsse_parser.mly"
    ( Bbsse_types.Directive.SkipJump address )
# 146 "src/bbsse/bbsse_parser.ml"
     : (Bbsse_types.Directive.t))

let _menhir_action_06 =
  fun _1 _2 _3 addr ->
    let address = 
# 44 "src/bbsse/bbsse_parser.mly"
    ( Virtual_address.of_bigint addr )
# 154 "src/bbsse/bbsse_parser.ml"
     in
    (
# 41 "src/bbsse/bbsse_parser.mly"
    ( Bbsse_types.Directive.ProcessCall address )
# 159 "src/bbsse/bbsse_parser.ml"
     : (Bbsse_types.Directive.t))

let _menhir_action_07 =
  fun _1 _2 ->
    (_1 : (Bbsse_types.Directive.t list))

let _menhir_action_08 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 171 "src/bbsse/bbsse_parser.ml"
     : (Bbsse_types.Directive.t list))

let _menhir_action_09 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 179 "src/bbsse/bbsse_parser.ml"
     : (Bbsse_types.Directive.t list))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | ADDRESS _ ->
        "ADDRESS"
    | AT ->
        "AT"
    | BRANCH ->
        "BRANCH"
    | CALL ->
        "CALL"
    | CLEAR ->
        "CLEAR"
    | EOF ->
        "EOF"
    | EXPECT ->
        "EXPECT"
    | FALLTHROUGH ->
        "FALLTHROUGH"
    | IS ->
        "IS"
    | OPAQUE ->
        "OPAQUE"
    | PROCESS ->
        "PROCESS"
    | SKIP ->
        "SKIP"
    | UNREACHABLE ->
        "UNREACHABLE"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37"]
  
  let _menhir_run_15 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_directives =
    fun _menhir_stack _v ->
      let (_1, _2) = (_v, ()) in
      let _v = _menhir_action_07 _1 _2 in
      MenhirBox_directives _v
  
  let rec _menhir_run_19 : type  ttv_stack. (ttv_stack, _menhir_box_directives) _menhir_cell1_directive -> _ -> _menhir_box_directives =
    fun _menhir_stack _v ->
      let MenhirCell1_directive (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_09 x xs in
      _menhir_goto_list_directive_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_directive_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_directives) _menhir_state -> _menhir_box_directives =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState18 ->
          _menhir_run_19 _menhir_stack _v
      | MenhirState00 ->
          _menhir_run_15 _menhir_stack _v
  
  let rec _menhir_run_01 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_directives) _menhir_state -> _menhir_box_directives =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | ADDRESS _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (addr, _1) = (_v, ()) in
          let _v = _menhir_action_05 _1 addr in
          _menhir_goto_directive _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_directive : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_directives) _menhir_state -> _ -> _menhir_box_directives =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_directive (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SKIP ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState18
      | PROCESS ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState18
      | EXPECT ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState18
      | EOF ->
          let _v_0 = _menhir_action_08 () in
          _menhir_run_19 _menhir_stack _v_0
      | _ ->
          _eRR ()
  
  and _menhir_run_03 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_directives) _menhir_state -> _menhir_box_directives =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | CALL ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | AT ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | ADDRESS _v ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (addr, _1, _3, _2) = (_v, (), (), ()) in
                  let _v = _menhir_action_06 _1 _2 _3 addr in
                  _menhir_goto_directive _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_07 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_directives) _menhir_state -> _menhir_box_directives =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | ADDRESS _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IS ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | UNREACHABLE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (addr, _1, _3, _1_inlined1) = (_v, (), (), ()) in
                  let _v = _menhir_action_03 _1 _1_inlined1 _3 addr in
                  _menhir_goto_directive _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | OPAQUE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | FALLTHROUGH ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (addr, _1, _3, _2, _1_inlined1) = (_v, (), (), (), ()) in
                      let _v = _menhir_action_02 _1 _1_inlined1 _2 _3 addr in
                      _menhir_goto_directive _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                  | BRANCH ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let (addr, _1, _3, _2, _1_inlined1) = (_v, (), (), (), ()) in
                      let _v = _menhir_action_01 _1 _1_inlined1 _2 _3 addr in
                      _menhir_goto_directive _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                  | _ ->
                      _eRR ())
              | CLEAR ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (addr, _1, _3, _1_inlined1) = (_v, (), (), ()) in
                  let _v = _menhir_action_04 _1 _1_inlined1 _3 addr in
                  _menhir_goto_directive _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  let _menhir_run_00 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_directives =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SKIP ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState00
      | PROCESS ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState00
      | EXPECT ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState00
      | EOF ->
          let _v = _menhir_action_08 () in
          _menhir_run_15 _menhir_stack _v
      | _ ->
          _eRR ()
  
end

let directives =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_directives v = _menhir_run_00 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
