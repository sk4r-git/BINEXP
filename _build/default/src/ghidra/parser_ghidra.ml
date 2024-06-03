
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | SUPER
    | SUCCESSORS
    | STRING of (
# 25 "src/ghidra/parser_ghidra.mly"
       (string)
# 17 "src/ghidra/parser_ghidra.ml"
  )
    | SIZE
    | RPAR
    | OPCODE
    | NUMERIC of (
# 24 "src/ghidra/parser_ghidra.mly"
       (Z.t)
# 25 "src/ghidra/parser_ghidra.ml"
  )
    | MNEMONIC
    | LPAR
    | KIND
    | INFO
    | FILE
    | EOF
    | DOT
    | DATE
    | ADDRESS
  
end

include MenhirBasics

type ('s, 'r) _menhir_state = 
  | MenhirState00 : ('s, _menhir_box_instruction) _menhir_state
    (** State 00.
        Stack shape : .
        Start symbol: instruction. *)

  | MenhirState11 : (('s, _menhir_box_instruction) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, _menhir_box_instruction) _menhir_state
    (** State 11.
        Stack shape : log(kv(ADDRESS,NUMERIC)).
        Start symbol: instruction. *)

  | MenhirState22 : ((('s, _menhir_box_instruction) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_OPCODE_NUMERIC__, _menhir_box_instruction) _menhir_state
    (** State 22.
        Stack shape : log(kv(ADDRESS,NUMERIC)) log(kv(OPCODE,NUMERIC)).
        Start symbol: instruction. *)

  | MenhirState33 : (((('s, _menhir_box_instruction) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_OPCODE_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_SIZE_NUMERIC__, _menhir_box_instruction) _menhir_state
    (** State 33.
        Stack shape : log(kv(ADDRESS,NUMERIC)) log(kv(OPCODE,NUMERIC)) log(kv(SIZE,NUMERIC)).
        Start symbol: instruction. *)

  | MenhirState44 : ((((('s, _menhir_box_instruction) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_OPCODE_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_SIZE_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_MNEMONIC_STRING__, _menhir_box_instruction) _menhir_state
    (** State 44.
        Stack shape : log(kv(ADDRESS,NUMERIC)) log(kv(OPCODE,NUMERIC)) log(kv(SIZE,NUMERIC)) log(kv(MNEMONIC,STRING)).
        Start symbol: instruction. *)

  | MenhirState55 : (((((('s, _menhir_box_instruction) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_OPCODE_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_SIZE_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_MNEMONIC_STRING__, _menhir_box_instruction) _menhir_cell1_log_kv_KIND_STRING__, _menhir_box_instruction) _menhir_state
    (** State 55.
        Stack shape : log(kv(ADDRESS,NUMERIC)) log(kv(OPCODE,NUMERIC)) log(kv(SIZE,NUMERIC)) log(kv(MNEMONIC,STRING)) log(kv(KIND,STRING)).
        Start symbol: instruction. *)

  | MenhirState59 : ((((((('s, _menhir_box_instruction) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_OPCODE_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_SIZE_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_MNEMONIC_STRING__, _menhir_box_instruction) _menhir_cell1_log_kv_KIND_STRING__, _menhir_box_instruction) _menhir_cell1_DATE, _menhir_box_instruction) _menhir_state
    (** State 59.
        Stack shape : log(kv(ADDRESS,NUMERIC)) log(kv(OPCODE,NUMERIC)) log(kv(SIZE,NUMERIC)) log(kv(MNEMONIC,STRING)) log(kv(KIND,STRING)) DATE.
        Start symbol: instruction. *)

  | MenhirState62 : (((((((('s, _menhir_box_instruction) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_OPCODE_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_SIZE_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_MNEMONIC_STRING__, _menhir_box_instruction) _menhir_cell1_log_kv_KIND_STRING__, _menhir_box_instruction) _menhir_cell1_DATE, _menhir_box_instruction) _menhir_cell1_LPAR, _menhir_box_instruction) _menhir_state
    (** State 62.
        Stack shape : log(kv(ADDRESS,NUMERIC)) log(kv(OPCODE,NUMERIC)) log(kv(SIZE,NUMERIC)) log(kv(MNEMONIC,STRING)) log(kv(KIND,STRING)) DATE LPAR.
        Start symbol: instruction. *)

  | MenhirState63 : (('s, 'r) _menhir_cell1_NUMERIC, 'r) _menhir_state
    (** State 63.
        Stack shape : NUMERIC.
        Start symbol: <undetermined>. *)

  | MenhirState70 : ('s, _menhir_box_instructions) _menhir_state
    (** State 70.
        Stack shape : .
        Start symbol: instructions. *)

  | MenhirState71 : (('s, _menhir_box_instructions) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, _menhir_box_instructions) _menhir_state
    (** State 71.
        Stack shape : log(kv(ADDRESS,NUMERIC)).
        Start symbol: instructions. *)

  | MenhirState72 : ((('s, _menhir_box_instructions) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_OPCODE_NUMERIC__, _menhir_box_instructions) _menhir_state
    (** State 72.
        Stack shape : log(kv(ADDRESS,NUMERIC)) log(kv(OPCODE,NUMERIC)).
        Start symbol: instructions. *)

  | MenhirState73 : (((('s, _menhir_box_instructions) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_OPCODE_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_SIZE_NUMERIC__, _menhir_box_instructions) _menhir_state
    (** State 73.
        Stack shape : log(kv(ADDRESS,NUMERIC)) log(kv(OPCODE,NUMERIC)) log(kv(SIZE,NUMERIC)).
        Start symbol: instructions. *)

  | MenhirState74 : ((((('s, _menhir_box_instructions) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_OPCODE_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_SIZE_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_MNEMONIC_STRING__, _menhir_box_instructions) _menhir_state
    (** State 74.
        Stack shape : log(kv(ADDRESS,NUMERIC)) log(kv(OPCODE,NUMERIC)) log(kv(SIZE,NUMERIC)) log(kv(MNEMONIC,STRING)).
        Start symbol: instructions. *)

  | MenhirState75 : (((((('s, _menhir_box_instructions) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_OPCODE_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_SIZE_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_MNEMONIC_STRING__, _menhir_box_instructions) _menhir_cell1_log_kv_KIND_STRING__, _menhir_box_instructions) _menhir_state
    (** State 75.
        Stack shape : log(kv(ADDRESS,NUMERIC)) log(kv(OPCODE,NUMERIC)) log(kv(SIZE,NUMERIC)) log(kv(MNEMONIC,STRING)) log(kv(KIND,STRING)).
        Start symbol: instructions. *)

  | MenhirState79 : ((((((('s, _menhir_box_instructions) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_OPCODE_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_SIZE_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_MNEMONIC_STRING__, _menhir_box_instructions) _menhir_cell1_log_kv_KIND_STRING__, _menhir_box_instructions) _menhir_cell1_DATE, _menhir_box_instructions) _menhir_state
    (** State 79.
        Stack shape : log(kv(ADDRESS,NUMERIC)) log(kv(OPCODE,NUMERIC)) log(kv(SIZE,NUMERIC)) log(kv(MNEMONIC,STRING)) log(kv(KIND,STRING)) DATE.
        Start symbol: instructions. *)

  | MenhirState82 : (((((((('s, _menhir_box_instructions) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_OPCODE_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_SIZE_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_MNEMONIC_STRING__, _menhir_box_instructions) _menhir_cell1_log_kv_KIND_STRING__, _menhir_box_instructions) _menhir_cell1_DATE, _menhir_box_instructions) _menhir_cell1_LPAR, _menhir_box_instructions) _menhir_state
    (** State 82.
        Stack shape : log(kv(ADDRESS,NUMERIC)) log(kv(OPCODE,NUMERIC)) log(kv(SIZE,NUMERIC)) log(kv(MNEMONIC,STRING)) log(kv(KIND,STRING)) DATE LPAR.
        Start symbol: instructions. *)

  | MenhirState90 : (('s, _menhir_box_instructions) _menhir_cell1_instruction, _menhir_box_instructions) _menhir_state
    (** State 90.
        Stack shape : instruction.
        Start symbol: instructions. *)


and ('s, 'r) _menhir_cell1_instruction = 
  | MenhirCell1_instruction of 's * ('s, 'r) _menhir_state * (int * int * string * string * int list)

and ('s, 'r) _menhir_cell1_log_kv_ADDRESS_NUMERIC__ = 
  | MenhirCell1_log_kv_ADDRESS_NUMERIC__ of 's * ('s, 'r) _menhir_state * (Z.t)

and ('s, 'r) _menhir_cell1_log_kv_KIND_STRING__ = 
  | MenhirCell1_log_kv_KIND_STRING__ of 's * ('s, 'r) _menhir_state * (string)

and ('s, 'r) _menhir_cell1_log_kv_MNEMONIC_STRING__ = 
  | MenhirCell1_log_kv_MNEMONIC_STRING__ of 's * ('s, 'r) _menhir_state * (string)

and ('s, 'r) _menhir_cell1_log_kv_OPCODE_NUMERIC__ = 
  | MenhirCell1_log_kv_OPCODE_NUMERIC__ of 's * ('s, 'r) _menhir_state * (Z.t)

and ('s, 'r) _menhir_cell1_log_kv_SIZE_NUMERIC__ = 
  | MenhirCell1_log_kv_SIZE_NUMERIC__ of 's * ('s, 'r) _menhir_state * (Z.t)

and ('s, 'r) _menhir_cell1_DATE = 
  | MenhirCell1_DATE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LPAR = 
  | MenhirCell1_LPAR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_NUMERIC = 
  | MenhirCell1_NUMERIC of 's * ('s, 'r) _menhir_state * (
# 24 "src/ghidra/parser_ghidra.mly"
       (Z.t)
# 161 "src/ghidra/parser_ghidra.ml"
)

and _menhir_box_instructions = 
  | MenhirBox_instructions of ((int * int * string * string * int list) list) [@@unboxed]

and _menhir_box_instruction = 
  | MenhirBox_instruction of (int * int * string * string * int list) [@@unboxed]

let _menhir_action_02 =
  fun _2 addr kind mnemonic size successors ->
    (
# 45 "src/ghidra/parser_ghidra.mly"
    (
      Virtual_address.of_bigint addr,
      Z.to_int size,
      String.lowercase mnemonic,
      kind,
      List.map Virtual_address.of_bigint successors
    )
# 181 "src/ghidra/parser_ghidra.ml"
     : (int * int * string * string * int list))

let _menhir_action_03 =
  fun _1 _2 ->
    (_1 : ((int * int * string * string * int list) list))

let _menhir_action_04 =
  fun _1 _2 _3 _5 value ->
    (value : (Z.t))

let _menhir_action_05 =
  fun _1 _2 _3 _5 value ->
    (value : (string))

let _menhir_action_06 =
  fun _1 _2 _3 _5 value ->
    (value : (string))

let _menhir_action_07 =
  fun _1 _2 _3 _5 value ->
    (value : (Z.t))

let _menhir_action_08 =
  fun _1 _2 _3 _5 value ->
    (value : (Z.t))

let _menhir_action_09 =
  fun _1 _2 _3 _5 value ->
    (value : (Z.t list))

let _menhir_action_10 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 217 "src/ghidra/parser_ghidra.ml"
     : (Z.t list))

let _menhir_action_11 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 225 "src/ghidra/parser_ghidra.ml"
     : (Z.t list))

let _menhir_action_12 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 233 "src/ghidra/parser_ghidra.ml"
     : ((int * int * string * string * int list) list))

let _menhir_action_13 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 241 "src/ghidra/parser_ghidra.ml"
     : ((int * int * string * string * int list) list))

let _menhir_action_14 =
  fun _1 _2 _3 _4 _5 ->
    (_5 : (Z.t))

let _menhir_action_15 =
  fun _1 _2 _3 _4 _5 ->
    (_5 : (string))

let _menhir_action_16 =
  fun _1 _2 _3 _4 _5 ->
    (_5 : (string))

let _menhir_action_17 =
  fun _1 _2 _3 _4 _5 ->
    (_5 : (Z.t))

let _menhir_action_18 =
  fun _1 _2 _3 _4 _5 ->
    (_5 : (Z.t))

let _menhir_action_19 =
  fun _1 _2 _3 _4 _5 ->
    (_5 : (Z.t list))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | ADDRESS ->
        "ADDRESS"
    | DATE ->
        "DATE"
    | DOT ->
        "DOT"
    | EOF ->
        "EOF"
    | FILE ->
        "FILE"
    | INFO ->
        "INFO"
    | KIND ->
        "KIND"
    | LPAR ->
        "LPAR"
    | MNEMONIC ->
        "MNEMONIC"
    | NUMERIC _ ->
        "NUMERIC"
    | OPCODE ->
        "OPCODE"
    | RPAR ->
        "RPAR"
    | SIZE ->
        "SIZE"
    | STRING _ ->
        "STRING"
    | SUCCESSORS ->
        "SUCCESSORS"
    | SUPER ->
        "SUPER"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37"]
  
  let _menhir_run_87 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_instructions =
    fun _menhir_stack _v ->
      let (_2, _1) = ((), _v) in
      let _v = _menhir_action_03 _1 _2 in
      MenhirBox_instructions _v
  
  let rec _menhir_run_91 : type  ttv_stack. (ttv_stack, _menhir_box_instructions) _menhir_cell1_instruction -> _ -> _menhir_box_instructions =
    fun _menhir_stack _v ->
      let MenhirCell1_instruction (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_13 x xs in
      _menhir_goto_list_instruction_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_instruction_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_instructions) _menhir_state -> _menhir_box_instructions =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState90 ->
          _menhir_run_91 _menhir_stack _v
      | MenhirState70 ->
          _menhir_run_87 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let _menhir_run_69 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_instruction =
    fun _menhir_stack _v ->
      MenhirBox_instruction _v
  
  let rec _menhir_run_01 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_DATE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | INFO ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | FILE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | SUPER ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | LPAR ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | ADDRESS ->
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          (match (_tok : MenhirBasics.token) with
                          | DOT ->
                              let _tok = _menhir_lexer _menhir_lexbuf in
                              (match (_tok : MenhirBasics.token) with
                              | NUMERIC _v ->
                                  let _tok = _menhir_lexer _menhir_lexbuf in
                                  (match (_tok : MenhirBasics.token) with
                                  | RPAR ->
                                      let _tok = _menhir_lexer _menhir_lexbuf in
                                      let (_2, _1, _5, value, _3) = ((), (), (), _v, ()) in
                                      let _v = _menhir_action_04 _1 _2 _3 _5 value in
                                      let MenhirCell1_DATE (_menhir_stack, _menhir_s) = _menhir_stack in
                                      let (_2, _1, _5, _3, _4) = ((), (), _v, (), ()) in
                                      let _v = _menhir_action_14 _1 _2 _3 _4 _5 in
                                      _menhir_goto_log_kv_ADDRESS_NUMERIC__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                                  | _ ->
                                      _eRR ())
                              | _ ->
                                  _eRR ())
                          | _ ->
                              _eRR ())
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_log_kv_ADDRESS_NUMERIC__ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState90 ->
          _menhir_run_71 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState70 ->
          _menhir_run_71 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState00 ->
          _menhir_run_11 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_71 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_instructions) _menhir_state -> _ -> _menhir_box_instructions =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_log_kv_ADDRESS_NUMERIC__ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | DATE ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState71
      | _ ->
          _eRR ()
  
  and _menhir_run_12 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_log_kv_ADDRESS_NUMERIC__ as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_DATE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | INFO ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | FILE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | SUPER ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | LPAR ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | OPCODE ->
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          (match (_tok : MenhirBasics.token) with
                          | DOT ->
                              let _tok = _menhir_lexer _menhir_lexbuf in
                              (match (_tok : MenhirBasics.token) with
                              | NUMERIC _v ->
                                  let _tok = _menhir_lexer _menhir_lexbuf in
                                  (match (_tok : MenhirBasics.token) with
                                  | RPAR ->
                                      let _tok = _menhir_lexer _menhir_lexbuf in
                                      let (_2, _1, _5, value, _3) = ((), (), (), _v, ()) in
                                      let _v = _menhir_action_07 _1 _2 _3 _5 value in
                                      let MenhirCell1_DATE (_menhir_stack, _menhir_s) = _menhir_stack in
                                      let (_2, _1, _5, _3, _4) = ((), (), _v, (), ()) in
                                      let _v = _menhir_action_17 _1 _2 _3 _4 _5 in
                                      _menhir_goto_log_kv_OPCODE_NUMERIC__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                                  | _ ->
                                      _eRR ())
                              | _ ->
                                  _eRR ())
                          | _ ->
                              _eRR ())
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_log_kv_OPCODE_NUMERIC__ : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_log_kv_ADDRESS_NUMERIC__ as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState71 ->
          _menhir_run_72 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState11 ->
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_72 : type  ttv_stack. ((ttv_stack, _menhir_box_instructions) _menhir_cell1_log_kv_ADDRESS_NUMERIC__ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_instructions) _menhir_state -> _ -> _menhir_box_instructions =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_log_kv_OPCODE_NUMERIC__ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | DATE ->
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState72
      | _ ->
          _eRR ()
  
  and _menhir_run_23 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, ttv_result) _menhir_cell1_log_kv_OPCODE_NUMERIC__ as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_DATE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | INFO ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | FILE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | SUPER ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | LPAR ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | SIZE ->
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          (match (_tok : MenhirBasics.token) with
                          | DOT ->
                              let _tok = _menhir_lexer _menhir_lexbuf in
                              (match (_tok : MenhirBasics.token) with
                              | NUMERIC _v ->
                                  let _tok = _menhir_lexer _menhir_lexbuf in
                                  (match (_tok : MenhirBasics.token) with
                                  | RPAR ->
                                      let _tok = _menhir_lexer _menhir_lexbuf in
                                      let (_2, _1, _5, value, _3) = ((), (), (), _v, ()) in
                                      let _v = _menhir_action_08 _1 _2 _3 _5 value in
                                      let MenhirCell1_DATE (_menhir_stack, _menhir_s) = _menhir_stack in
                                      let (_2, _1, _5, _3, _4) = ((), (), _v, (), ()) in
                                      let _v = _menhir_action_18 _1 _2 _3 _4 _5 in
                                      _menhir_goto_log_kv_SIZE_NUMERIC__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                                  | _ ->
                                      _eRR ())
                              | _ ->
                                  _eRR ())
                          | _ ->
                              _eRR ())
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_log_kv_SIZE_NUMERIC__ : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, ttv_result) _menhir_cell1_log_kv_OPCODE_NUMERIC__ as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState72 ->
          _menhir_run_73 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState22 ->
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_73 : type  ttv_stack. (((ttv_stack, _menhir_box_instructions) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_OPCODE_NUMERIC__ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_instructions) _menhir_state -> _ -> _menhir_box_instructions =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_log_kv_SIZE_NUMERIC__ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | DATE ->
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | _ ->
          _eRR ()
  
  and _menhir_run_34 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, ttv_result) _menhir_cell1_log_kv_OPCODE_NUMERIC__, ttv_result) _menhir_cell1_log_kv_SIZE_NUMERIC__ as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_DATE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | INFO ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | FILE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | SUPER ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | LPAR ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | MNEMONIC ->
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          (match (_tok : MenhirBasics.token) with
                          | DOT ->
                              let _tok = _menhir_lexer _menhir_lexbuf in
                              (match (_tok : MenhirBasics.token) with
                              | STRING _v ->
                                  let _tok = _menhir_lexer _menhir_lexbuf in
                                  (match (_tok : MenhirBasics.token) with
                                  | RPAR ->
                                      let _tok = _menhir_lexer _menhir_lexbuf in
                                      let (_2, _1, _5, value, _3) = ((), (), (), _v, ()) in
                                      let _v = _menhir_action_06 _1 _2 _3 _5 value in
                                      let MenhirCell1_DATE (_menhir_stack, _menhir_s) = _menhir_stack in
                                      let (_2, _1, _5, _3, _4) = ((), (), _v, (), ()) in
                                      let _v = _menhir_action_16 _1 _2 _3 _4 _5 in
                                      _menhir_goto_log_kv_MNEMONIC_STRING__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                                  | _ ->
                                      _eRR ())
                              | _ ->
                                  _eRR ())
                          | _ ->
                              _eRR ())
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_log_kv_MNEMONIC_STRING__ : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, ttv_result) _menhir_cell1_log_kv_OPCODE_NUMERIC__, ttv_result) _menhir_cell1_log_kv_SIZE_NUMERIC__ as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState73 ->
          _menhir_run_74 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState33 ->
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_74 : type  ttv_stack. ((((ttv_stack, _menhir_box_instructions) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_OPCODE_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_SIZE_NUMERIC__ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_instructions) _menhir_state -> _ -> _menhir_box_instructions =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_log_kv_MNEMONIC_STRING__ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | DATE ->
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState74
      | _ ->
          _eRR ()
  
  and _menhir_run_45 : type  ttv_stack ttv_result. (((((ttv_stack, ttv_result) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, ttv_result) _menhir_cell1_log_kv_OPCODE_NUMERIC__, ttv_result) _menhir_cell1_log_kv_SIZE_NUMERIC__, ttv_result) _menhir_cell1_log_kv_MNEMONIC_STRING__ as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_DATE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | INFO ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | FILE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | SUPER ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | LPAR ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | KIND ->
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          (match (_tok : MenhirBasics.token) with
                          | DOT ->
                              let _tok = _menhir_lexer _menhir_lexbuf in
                              (match (_tok : MenhirBasics.token) with
                              | STRING _v ->
                                  let _tok = _menhir_lexer _menhir_lexbuf in
                                  (match (_tok : MenhirBasics.token) with
                                  | RPAR ->
                                      let _tok = _menhir_lexer _menhir_lexbuf in
                                      let (_2, _1, _5, value, _3) = ((), (), (), _v, ()) in
                                      let _v = _menhir_action_05 _1 _2 _3 _5 value in
                                      let MenhirCell1_DATE (_menhir_stack, _menhir_s) = _menhir_stack in
                                      let (_2, _1, _5, _3, _4) = ((), (), _v, (), ()) in
                                      let _v = _menhir_action_15 _1 _2 _3 _4 _5 in
                                      _menhir_goto_log_kv_KIND_STRING__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                                  | _ ->
                                      _eRR ())
                              | _ ->
                                  _eRR ())
                          | _ ->
                              _eRR ())
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_log_kv_KIND_STRING__ : type  ttv_stack ttv_result. (((((ttv_stack, ttv_result) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, ttv_result) _menhir_cell1_log_kv_OPCODE_NUMERIC__, ttv_result) _menhir_cell1_log_kv_SIZE_NUMERIC__, ttv_result) _menhir_cell1_log_kv_MNEMONIC_STRING__ as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState74 ->
          _menhir_run_75 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState44 ->
          _menhir_run_55 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_75 : type  ttv_stack. (((((ttv_stack, _menhir_box_instructions) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_OPCODE_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_SIZE_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_MNEMONIC_STRING__ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_instructions) _menhir_state -> _ -> _menhir_box_instructions =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_log_kv_KIND_STRING__ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | DATE ->
          let _menhir_stack = MenhirCell1_DATE (_menhir_stack, MenhirState75) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | INFO ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | FILE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | SUPER ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | LPAR ->
                          let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, MenhirState79) in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          (match (_tok : MenhirBasics.token) with
                          | SUCCESSORS ->
                              let _tok = _menhir_lexer _menhir_lexbuf in
                              (match (_tok : MenhirBasics.token) with
                              | DOT ->
                                  let _tok = _menhir_lexer _menhir_lexbuf in
                                  (match (_tok : MenhirBasics.token) with
                                  | NUMERIC _v_0 ->
                                      _menhir_run_63 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState82
                                  | RPAR ->
                                      let _v_1 = _menhir_action_10 () in
                                      _menhir_run_83 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1
                                  | _ ->
                                      _eRR ())
                              | _ ->
                                  _eRR ())
                          | _ ->
                              _eRR ())
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_63 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_NUMERIC (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NUMERIC _v_0 ->
          _menhir_run_63 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState63
      | RPAR ->
          let _v_1 = _menhir_action_10 () in
          _menhir_run_64 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_64 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_NUMERIC -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_NUMERIC (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_11 x xs in
      _menhir_goto_list_NUMERIC_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_list_NUMERIC_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState82 ->
          _menhir_run_83 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState62 ->
          _menhir_run_65 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState63 ->
          _menhir_run_64 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_83 : type  ttv_stack. (((((((ttv_stack, _menhir_box_instructions) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_OPCODE_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_SIZE_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_MNEMONIC_STRING__, _menhir_box_instructions) _menhir_cell1_log_kv_KIND_STRING__, _menhir_box_instructions) _menhir_cell1_DATE, _menhir_box_instructions) _menhir_cell1_LPAR -> _ -> _ -> _ -> _menhir_box_instructions =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
      let (_2, _1, _5, value, _3) = ((), (), (), _v, ()) in
      let _v = _menhir_action_09 _1 _2 _3 _5 value in
      _menhir_goto_kv_SUCCESSORS_list_NUMERIC__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_kv_SUCCESSORS_list_NUMERIC__ : type  ttv_stack ttv_result. (((((((ttv_stack, ttv_result) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, ttv_result) _menhir_cell1_log_kv_OPCODE_NUMERIC__, ttv_result) _menhir_cell1_log_kv_SIZE_NUMERIC__, ttv_result) _menhir_cell1_log_kv_MNEMONIC_STRING__, ttv_result) _menhir_cell1_log_kv_KIND_STRING__, ttv_result) _menhir_cell1_DATE as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState79 ->
          _menhir_run_85 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState59 ->
          _menhir_run_67 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_85 : type  ttv_stack. ((((((ttv_stack, _menhir_box_instructions) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_OPCODE_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_SIZE_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_MNEMONIC_STRING__, _menhir_box_instructions) _menhir_cell1_log_kv_KIND_STRING__, _menhir_box_instructions) _menhir_cell1_DATE -> _ -> _ -> _ -> _ -> _menhir_box_instructions =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_DATE (_menhir_stack, _menhir_s) = _menhir_stack in
      let (_2, _1, _5, _3, _4) = ((), (), _v, (), ()) in
      let _v = _menhir_action_19 _1 _2 _3 _4 _5 in
      _menhir_goto_log_kv_SUCCESSORS_list_NUMERIC___ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_log_kv_SUCCESSORS_list_NUMERIC___ : type  ttv_stack ttv_result. ((((((ttv_stack, ttv_result) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, ttv_result) _menhir_cell1_log_kv_OPCODE_NUMERIC__, ttv_result) _menhir_cell1_log_kv_SIZE_NUMERIC__, ttv_result) _menhir_cell1_log_kv_MNEMONIC_STRING__, ttv_result) _menhir_cell1_log_kv_KIND_STRING__ as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState75 ->
          _menhir_run_86 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState55 ->
          _menhir_run_68 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_86 : type  ttv_stack. (((((ttv_stack, _menhir_box_instructions) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_OPCODE_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_SIZE_NUMERIC__, _menhir_box_instructions) _menhir_cell1_log_kv_MNEMONIC_STRING__, _menhir_box_instructions) _menhir_cell1_log_kv_KIND_STRING__ -> _ -> _ -> _ -> _ -> _menhir_box_instructions =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_log_kv_KIND_STRING__ (_menhir_stack, _, kind) = _menhir_stack in
      let MenhirCell1_log_kv_MNEMONIC_STRING__ (_menhir_stack, _, mnemonic) = _menhir_stack in
      let MenhirCell1_log_kv_SIZE_NUMERIC__ (_menhir_stack, _, size) = _menhir_stack in
      let MenhirCell1_log_kv_OPCODE_NUMERIC__ (_menhir_stack, _, _2) = _menhir_stack in
      let MenhirCell1_log_kv_ADDRESS_NUMERIC__ (_menhir_stack, _menhir_s, addr) = _menhir_stack in
      let successors = _v in
      let _v = _menhir_action_02 _2 addr kind mnemonic size successors in
      _menhir_goto_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_instruction : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState90 ->
          _menhir_run_90 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState70 ->
          _menhir_run_90 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState00 ->
          _menhir_run_69 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_90 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_instructions) _menhir_state -> _ -> _menhir_box_instructions =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_instruction (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | DATE ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState90
      | EOF ->
          let _v_0 = _menhir_action_12 () in
          _menhir_run_91 _menhir_stack _v_0
      | _ ->
          _eRR ()
  
  and _menhir_run_68 : type  ttv_stack. (((((ttv_stack, _menhir_box_instruction) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_OPCODE_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_SIZE_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_MNEMONIC_STRING__, _menhir_box_instruction) _menhir_cell1_log_kv_KIND_STRING__ -> _ -> _ -> _ -> _ -> _menhir_box_instruction =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_log_kv_KIND_STRING__ (_menhir_stack, _, kind) = _menhir_stack in
      let MenhirCell1_log_kv_MNEMONIC_STRING__ (_menhir_stack, _, mnemonic) = _menhir_stack in
      let MenhirCell1_log_kv_SIZE_NUMERIC__ (_menhir_stack, _, size) = _menhir_stack in
      let MenhirCell1_log_kv_OPCODE_NUMERIC__ (_menhir_stack, _, _2) = _menhir_stack in
      let MenhirCell1_log_kv_ADDRESS_NUMERIC__ (_menhir_stack, _menhir_s, addr) = _menhir_stack in
      let successors = _v in
      let _v = _menhir_action_02 _2 addr kind mnemonic size successors in
      _menhir_goto_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_67 : type  ttv_stack. ((((((ttv_stack, _menhir_box_instruction) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_OPCODE_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_SIZE_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_MNEMONIC_STRING__, _menhir_box_instruction) _menhir_cell1_log_kv_KIND_STRING__, _menhir_box_instruction) _menhir_cell1_DATE -> _ -> _ -> _ -> _ -> _menhir_box_instruction =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_DATE (_menhir_stack, _menhir_s) = _menhir_stack in
      let (_2, _1, _5, _3, _4) = ((), (), _v, (), ()) in
      let _v = _menhir_action_19 _1 _2 _3 _4 _5 in
      _menhir_goto_log_kv_SUCCESSORS_list_NUMERIC___ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_65 : type  ttv_stack. (((((((ttv_stack, _menhir_box_instruction) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_OPCODE_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_SIZE_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_MNEMONIC_STRING__, _menhir_box_instruction) _menhir_cell1_log_kv_KIND_STRING__, _menhir_box_instruction) _menhir_cell1_DATE, _menhir_box_instruction) _menhir_cell1_LPAR -> _ -> _ -> _ -> _ -> _menhir_box_instruction =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
      let (_2, _1, _5, value, _3) = ((), (), (), _v, ()) in
      let _v = _menhir_action_09 _1 _2 _3 _5 value in
      _menhir_goto_kv_SUCCESSORS_list_NUMERIC__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_55 : type  ttv_stack. (((((ttv_stack, _menhir_box_instruction) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_OPCODE_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_SIZE_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_MNEMONIC_STRING__ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_instruction) _menhir_state -> _ -> _menhir_box_instruction =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_log_kv_KIND_STRING__ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | DATE ->
          let _menhir_stack = MenhirCell1_DATE (_menhir_stack, MenhirState55) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | INFO ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | FILE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | SUPER ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | LPAR ->
                          let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, MenhirState59) in
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          (match (_tok : MenhirBasics.token) with
                          | SUCCESSORS ->
                              let _tok = _menhir_lexer _menhir_lexbuf in
                              (match (_tok : MenhirBasics.token) with
                              | DOT ->
                                  let _tok = _menhir_lexer _menhir_lexbuf in
                                  (match (_tok : MenhirBasics.token) with
                                  | NUMERIC _v_0 ->
                                      _menhir_run_63 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState62
                                  | RPAR ->
                                      let _v_1 = _menhir_action_10 () in
                                      _menhir_run_65 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
                                  | _ ->
                                      _eRR ())
                              | _ ->
                                  _eRR ())
                          | _ ->
                              _eRR ())
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_44 : type  ttv_stack. ((((ttv_stack, _menhir_box_instruction) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_OPCODE_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_SIZE_NUMERIC__ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_instruction) _menhir_state -> _ -> _menhir_box_instruction =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_log_kv_MNEMONIC_STRING__ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | DATE ->
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState44
      | _ ->
          _eRR ()
  
  and _menhir_run_33 : type  ttv_stack. (((ttv_stack, _menhir_box_instruction) _menhir_cell1_log_kv_ADDRESS_NUMERIC__, _menhir_box_instruction) _menhir_cell1_log_kv_OPCODE_NUMERIC__ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_instruction) _menhir_state -> _ -> _menhir_box_instruction =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_log_kv_SIZE_NUMERIC__ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | DATE ->
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState33
      | _ ->
          _eRR ()
  
  and _menhir_run_22 : type  ttv_stack. ((ttv_stack, _menhir_box_instruction) _menhir_cell1_log_kv_ADDRESS_NUMERIC__ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_instruction) _menhir_state -> _ -> _menhir_box_instruction =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_log_kv_OPCODE_NUMERIC__ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | DATE ->
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState22
      | _ ->
          _eRR ()
  
  and _menhir_run_11 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_instruction) _menhir_state -> _ -> _menhir_box_instruction =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_log_kv_ADDRESS_NUMERIC__ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | DATE ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState11
      | _ ->
          _eRR ()
  
  let _menhir_run_00 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_instruction =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState00 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | DATE ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  let _menhir_run_70 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_instructions =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | DATE ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState70
      | EOF ->
          let _v = _menhir_action_12 () in
          _menhir_run_87 _menhir_stack _v
      | _ ->
          _eRR ()
  
end

let instructions =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_instructions v = _menhir_run_70 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let instruction =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_instruction v = _menhir_run_00 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
