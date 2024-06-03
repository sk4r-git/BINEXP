
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | XOR
    | UMINUS
    | TRUE
    | TERM_TOKEN
    | SUPER
    | STORELOAD
    | RSHIFTU
    | RSHIFTS
    | RROTATE
    | RPAR
    | RBRACKET
    | RBRACE
    | PLUS
    | OR
    | NOT
    | NEQ2
    | NEQ
    | MULTU
    | MULTS
    | MODU
    | MODS
    | MINUS
    | LTU
    | LTS
    | LSHIFT
    | LROTATE
    | LPAR
    | LEU
    | LES
    | LBRACKET
    | LBRACE
    | INT of (
# 70 "src/parser/dbacsl_parser.mly"
       (string)
# 46 "src/parser/dbacsl_parser.ml"
  )
    | INFER
    | IFJUMP
    | IDENT of (
# 71 "src/parser/dbacsl_parser.mly"
       (string)
# 53 "src/parser/dbacsl_parser.ml"
  )
    | HEXA of (
# 72 "src/parser/dbacsl_parser.mly"
       (string * int)
# 58 "src/parser/dbacsl_parser.ml"
  )
    | GTU
    | GTS
    | GEU
    | GES
    | FALSE
    | EXTU
    | EXTS
    | EQQ2
    | EQQ
    | EOF
    | ELSE
    | DIVU
    | DIVS
    | CONCAT
    | COMMA
    | ASSUME
    | ASSERT
    | AND
  
end

include MenhirBasics

# 22 "src/parser/dbacsl_parser.mly"
  
  open Dba

  let is_same_size_op op =
    let open Dba.Binary_op in
    match op with
    | Concat | LShift | RShiftU
    | RShiftS  | LeftRotate | RightRotate -> false
    | _ -> true


  let infer_binary_op_size left op right =
    let open Dba.Expr in
    let default () = binary op left right in
    if is_same_size_op op then
      let sz1 = Dba.Expr.size_of left in
      let sz2 = Dba.Expr.size_of right in
      if sz1 = 0 || sz2 = 0 then
        if sz1 = 0 then
          binary op (Parse_helpers.patch_expr_size left sz2) right
        else
          binary op left (Parse_helpers.patch_expr_size right sz1)
      else
        if sz1 <> sz2 then
          match left, right with
          | (_,Dba.Expr.Cst bv) ->
             binary op left
                    (constant (Bitvector.create (Bitvector.value_of bv) sz1))
          | (Dba.Expr.Cst bv,_) ->
             binary op
                    (constant (Bitvector.create (Bitvector.value_of bv) sz2)) right
          | _ -> Printf.printf "Cannot infer size (mismatch remaining"; default ()
        else default ()
    else default ()


# 120 "src/parser/dbacsl_parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState00 : ('s, _menhir_box_term) _menhir_state
    (** State 00.
        Stack shape : .
        Start symbol: term. *)

  | MenhirState03 : (('s, _menhir_box_term) _menhir_cell1_TERM_TOKEN, _menhir_box_term) _menhir_state
    (** State 03.
        Stack shape : TERM_TOKEN.
        Start symbol: term. *)

  | MenhirState05 : (('s, _menhir_box_term) _menhir_cell1_STORELOAD, _menhir_box_term) _menhir_state
    (** State 05.
        Stack shape : STORELOAD.
        Start symbol: term. *)

  | MenhirState06 : (('s, _menhir_box_term) _menhir_cell1_NOT, _menhir_box_term) _menhir_state
    (** State 06.
        Stack shape : NOT.
        Start symbol: term. *)

  | MenhirState07 : (('s, _menhir_box_term) _menhir_cell1_MINUS, _menhir_box_term) _menhir_state
    (** State 07.
        Stack shape : MINUS.
        Start symbol: term. *)

  | MenhirState08 : (('s, _menhir_box_term) _menhir_cell1_LPAR, _menhir_box_term) _menhir_state
    (** State 08.
        Stack shape : LPAR.
        Start symbol: term. *)

  | MenhirState09 : (('s, _menhir_box_term) _menhir_cell1_LBRACE, _menhir_box_term) _menhir_state
    (** State 09.
        Stack shape : LBRACE.
        Start symbol: term. *)

  | MenhirState14 : (('s, _menhir_box_term) _menhir_cell1_IFJUMP, _menhir_box_term) _menhir_state
    (** State 14.
        Stack shape : IFJUMP.
        Start symbol: term. *)

  | MenhirState18 : (('s, _menhir_box_term) _menhir_cell1_EXTU, _menhir_box_term) _menhir_state
    (** State 18.
        Stack shape : EXTU.
        Start symbol: term. *)

  | MenhirState19 : (('s, _menhir_box_term) _menhir_cell1_EXTS, _menhir_box_term) _menhir_state
    (** State 19.
        Stack shape : EXTS.
        Start symbol: term. *)

  | MenhirState20 : ((('s, _menhir_box_term) _menhir_cell1_EXTS, _menhir_box_term) _menhir_cell1_expr, _menhir_box_term) _menhir_state
    (** State 20.
        Stack shape : EXTS expr.
        Start symbol: term. *)

  | MenhirState51 : ((('s, _menhir_box_term) _menhir_cell1_expr, _menhir_box_term) _menhir_cell1_bin_op, _menhir_box_term) _menhir_state
    (** State 51.
        Stack shape : expr bin_op.
        Start symbol: term. *)

  | MenhirState52 : (((('s, _menhir_box_term) _menhir_cell1_expr, _menhir_box_term) _menhir_cell1_bin_op, _menhir_box_term) _menhir_cell1_expr, _menhir_box_term) _menhir_state
    (** State 52.
        Stack shape : expr bin_op expr.
        Start symbol: term. *)

  | MenhirState53 : ((('s, _menhir_box_term) _menhir_cell1_EXTU, _menhir_box_term) _menhir_cell1_expr, _menhir_box_term) _menhir_state
    (** State 53.
        Stack shape : EXTU expr.
        Start symbol: term. *)

  | MenhirState55 : (('s, _menhir_box_term) _menhir_cell1_expr, _menhir_box_term) _menhir_state
    (** State 55.
        Stack shape : expr.
        Start symbol: term. *)

  | MenhirState56 : ((('s, _menhir_box_term) _menhir_cell1_IFJUMP, _menhir_box_term) _menhir_cell1_cond, _menhir_box_term) _menhir_state
    (** State 56.
        Stack shape : IFJUMP cond.
        Start symbol: term. *)

  | MenhirState57 : (((('s, _menhir_box_term) _menhir_cell1_IFJUMP, _menhir_box_term) _menhir_cell1_cond, _menhir_box_term) _menhir_cell1_expr, _menhir_box_term) _menhir_state
    (** State 57.
        Stack shape : IFJUMP cond expr.
        Start symbol: term. *)

  | MenhirState58 : ((((('s, _menhir_box_term) _menhir_cell1_IFJUMP, _menhir_box_term) _menhir_cell1_cond, _menhir_box_term) _menhir_cell1_expr, _menhir_box_term) _menhir_cell1_ELSE, _menhir_box_term) _menhir_state
    (** State 58.
        Stack shape : IFJUMP cond expr ELSE.
        Start symbol: term. *)

  | MenhirState59 : (((((('s, _menhir_box_term) _menhir_cell1_IFJUMP, _menhir_box_term) _menhir_cell1_cond, _menhir_box_term) _menhir_cell1_expr, _menhir_box_term) _menhir_cell1_ELSE, _menhir_box_term) _menhir_cell1_expr, _menhir_box_term) _menhir_state
    (** State 59.
        Stack shape : IFJUMP cond expr ELSE expr.
        Start symbol: term. *)

  | MenhirState60 : ((('s, _menhir_box_term) _menhir_cell1_LBRACE, _menhir_box_term) _menhir_cell1_expr, _menhir_box_term) _menhir_state
    (** State 60.
        Stack shape : LBRACE expr.
        Start symbol: term. *)

  | MenhirState66 : ((('s, _menhir_box_term) _menhir_cell1_LPAR, _menhir_box_term) _menhir_cell1_expr, _menhir_box_term) _menhir_state
    (** State 66.
        Stack shape : LPAR expr.
        Start symbol: term. *)

  | MenhirState68 : (((('s, _menhir_box_term) _menhir_cell1_LPAR, _menhir_box_term) _menhir_cell1_expr, _menhir_box_term) _menhir_cell1_bin_op, _menhir_box_term) _menhir_state
    (** State 68.
        Stack shape : LPAR expr bin_op.
        Start symbol: term. *)

  | MenhirState69 : ((((('s, _menhir_box_term) _menhir_cell1_LPAR, _menhir_box_term) _menhir_cell1_expr, _menhir_box_term) _menhir_cell1_bin_op, _menhir_box_term) _menhir_cell1_expr, _menhir_box_term) _menhir_state
    (** State 69.
        Stack shape : LPAR expr bin_op expr.
        Start symbol: term. *)

  | MenhirState71 : ((('s, _menhir_box_term) _menhir_cell1_MINUS, _menhir_box_term) _menhir_cell1_expr, _menhir_box_term) _menhir_state
    (** State 71.
        Stack shape : MINUS expr.
        Start symbol: term. *)

  | MenhirState72 : ((('s, _menhir_box_term) _menhir_cell1_NOT, _menhir_box_term) _menhir_cell1_expr, _menhir_box_term) _menhir_state
    (** State 72.
        Stack shape : NOT expr.
        Start symbol: term. *)

  | MenhirState73 : ((('s, _menhir_box_term) _menhir_cell1_STORELOAD, _menhir_box_term) _menhir_cell1_expr, _menhir_box_term) _menhir_state
    (** State 73.
        Stack shape : STORELOAD expr.
        Start symbol: term. *)

  | MenhirState78 : ((('s, _menhir_box_term) _menhir_cell1_TERM_TOKEN, _menhir_box_term) _menhir_cell1_LPAR, _menhir_box_term) _menhir_state
    (** State 78.
        Stack shape : TERM_TOKEN LPAR.
        Start symbol: term. *)

  | MenhirState79 : ((('s, _menhir_box_term) _menhir_cell1_LPAR, _menhir_box_term) _menhir_cell1_expr, _menhir_box_term) _menhir_state
    (** State 79.
        Stack shape : LPAR expr.
        Start symbol: term. *)

  | MenhirState85 : (('s, _menhir_box_term) _menhir_cell1_TERM_TOKEN, _menhir_box_term) _menhir_state
    (** State 85.
        Stack shape : TERM_TOKEN.
        Start symbol: term. *)

  | MenhirState86 : ((('s, _menhir_box_term) _menhir_cell1_TERM_TOKEN, _menhir_box_term) _menhir_cell1_LPAR, _menhir_box_term) _menhir_state
    (** State 86.
        Stack shape : TERM_TOKEN LPAR.
        Start symbol: term. *)


and ('s, 'r) _menhir_cell1_bin_op = 
  | MenhirCell1_bin_op of 's * ('s, 'r) _menhir_state * (Dba.Binary_op.t)

and ('s, 'r) _menhir_cell1_cond = 
  | MenhirCell1_cond of 's * ('s, 'r) _menhir_state * (Dba.Expr.t)

and ('s, 'r) _menhir_cell1_expr = 
  | MenhirCell1_expr of 's * ('s, 'r) _menhir_state * (Dba.Expr.t)

and ('s, 'r) _menhir_cell1_ELSE = 
  | MenhirCell1_ELSE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_EXTS = 
  | MenhirCell1_EXTS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_EXTU = 
  | MenhirCell1_EXTU of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_IFJUMP = 
  | MenhirCell1_IFJUMP of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LBRACE = 
  | MenhirCell1_LBRACE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LPAR = 
  | MenhirCell1_LPAR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_MINUS = 
  | MenhirCell1_MINUS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_NOT = 
  | MenhirCell1_NOT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_STORELOAD = 
  | MenhirCell1_STORELOAD of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TERM_TOKEN = 
  | MenhirCell1_TERM_TOKEN of 's * ('s, 'r) _menhir_state

and _menhir_box_term = 
  | MenhirBox_term of (Dba.Instr.t) [@@unboxed]

let _menhir_action_01 =
  fun () ->
    (
# 153 "src/parser/dbacsl_parser.mly"
        ( Dba.Binary_op.ModU )
# 321 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_02 =
  fun () ->
    (
# 154 "src/parser/dbacsl_parser.mly"
        ( Dba.Binary_op.ModS )
# 329 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_03 =
  fun () ->
    (
# 155 "src/parser/dbacsl_parser.mly"
       ( Dba.Binary_op.Or )
# 337 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_04 =
  fun () ->
    (
# 156 "src/parser/dbacsl_parser.mly"
       ( Dba.Binary_op.And )
# 345 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_05 =
  fun () ->
    (
# 157 "src/parser/dbacsl_parser.mly"
       ( Dba.Binary_op.Xor )
# 353 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_06 =
  fun () ->
    (
# 158 "src/parser/dbacsl_parser.mly"
        ( Dba.Binary_op.Plus )
# 361 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_07 =
  fun () ->
    (
# 159 "src/parser/dbacsl_parser.mly"
         ( Dba.Binary_op.Minus )
# 369 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_08 =
  fun () ->
    (
# 160 "src/parser/dbacsl_parser.mly"
         ( Dba.Binary_op.Mult )
# 377 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_09 =
  fun () ->
    (
# 161 "src/parser/dbacsl_parser.mly"
         ( Dba.Binary_op.Mult )
# 385 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_10 =
  fun () ->
    (
# 162 "src/parser/dbacsl_parser.mly"
        ( Dba.Binary_op.DivU )
# 393 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_11 =
  fun () ->
    (
# 163 "src/parser/dbacsl_parser.mly"
        ( Dba.Binary_op.DivS )
# 401 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_12 =
  fun () ->
    (
# 165 "src/parser/dbacsl_parser.mly"
          ( Dba.Binary_op.Concat )
# 409 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_13 =
  fun () ->
    (
# 167 "src/parser/dbacsl_parser.mly"
       ( Dba.Binary_op.Eq )
# 417 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_14 =
  fun () ->
    (
# 168 "src/parser/dbacsl_parser.mly"
        ( Dba.Binary_op.Eq )
# 425 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_15 =
  fun () ->
    (
# 169 "src/parser/dbacsl_parser.mly"
       ( Dba.Binary_op.Diff )
# 433 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_16 =
  fun () ->
    (
# 170 "src/parser/dbacsl_parser.mly"
        ( Dba.Binary_op.Diff )
# 441 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_17 =
  fun () ->
    (
# 171 "src/parser/dbacsl_parser.mly"
       ( Dba.Binary_op.LeqU )
# 449 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_18 =
  fun () ->
    (
# 172 "src/parser/dbacsl_parser.mly"
       ( Dba.Binary_op.LtU )
# 457 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_19 =
  fun () ->
    (
# 173 "src/parser/dbacsl_parser.mly"
       ( Dba.Binary_op.GeqU )
# 465 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_20 =
  fun () ->
    (
# 174 "src/parser/dbacsl_parser.mly"
       ( Dba.Binary_op.GtU )
# 473 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_21 =
  fun () ->
    (
# 175 "src/parser/dbacsl_parser.mly"
       ( Dba.Binary_op.LeqS )
# 481 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_22 =
  fun () ->
    (
# 176 "src/parser/dbacsl_parser.mly"
       ( Dba.Binary_op.LtS )
# 489 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_23 =
  fun () ->
    (
# 177 "src/parser/dbacsl_parser.mly"
       ( Dba.Binary_op.GeqS )
# 497 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_24 =
  fun () ->
    (
# 178 "src/parser/dbacsl_parser.mly"
       ( Dba.Binary_op.GtS )
# 505 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_25 =
  fun () ->
    (
# 180 "src/parser/dbacsl_parser.mly"
           ( Dba.Binary_op.LShift )
# 513 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_26 =
  fun () ->
    (
# 181 "src/parser/dbacsl_parser.mly"
            ( Dba.Binary_op.RShiftU )
# 521 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_27 =
  fun () ->
    (
# 182 "src/parser/dbacsl_parser.mly"
             ( Dba.Binary_op.RShiftS )
# 529 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_28 =
  fun () ->
    (
# 183 "src/parser/dbacsl_parser.mly"
            ( Dba.Binary_op.LeftRotate )
# 537 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_29 =
  fun () ->
    (
# 184 "src/parser/dbacsl_parser.mly"
            ( Dba.Binary_op.RightRotate )
# 545 "src/parser/dbacsl_parser.ml"
     : (Dba.Binary_op.t))

let _menhir_action_30 =
  fun () ->
    (
# 187 "src/parser/dbacsl_parser.mly"
           ( Dba.Expr._true )
# 553 "src/parser/dbacsl_parser.ml"
     : (Dba.Expr.t))

let _menhir_action_31 =
  fun () ->
    (
# 188 "src/parser/dbacsl_parser.mly"
           ( Dba.Expr._false )
# 561 "src/parser/dbacsl_parser.ml"
     : (Dba.Expr.t))

let _menhir_action_32 =
  fun e ->
    (
# 189 "src/parser/dbacsl_parser.mly"
           ( e )
# 569 "src/parser/dbacsl_parser.ml"
     : (Dba.Expr.t))

let _menhir_action_33 =
  fun _1 _3 ->
    (
# 101 "src/parser/dbacsl_parser.mly"
                        (
    let size = int_of_string _3 in
    let bigint = (Z.of_string _1) in
    let bv = Bitvector.create bigint size in
    Dba.Expr.constant bv
  )
# 582 "src/parser/dbacsl_parser.ml"
     : (Dba.Expr.t))

let _menhir_action_34 =
  fun _1 ->
    (
# 107 "src/parser/dbacsl_parser.mly"
        (
    let bigint = Z.of_string _1 in
    Expr.constant (Bitvector.create bigint 0)
  )
# 593 "src/parser/dbacsl_parser.ml"
     : (Dba.Expr.t))

let _menhir_action_35 =
  fun _1 ->
    (
# 111 "src/parser/dbacsl_parser.mly"
         (
    let s, size = _1 in
    let bigint = Z.of_string s in
    let bv = Bitvector.create bigint size in
    Expr.constant bv
  )
# 606 "src/parser/dbacsl_parser.ml"
     : (Dba.Expr.t))

let _menhir_action_36 =
  fun _1 ->
    (
# 117 "src/parser/dbacsl_parser.mly"
          ( Parse_helpers.expr_of_name _1 )
# 614 "src/parser/dbacsl_parser.ml"
     : (Dba.Expr.t))

let _menhir_action_37 =
  fun _3 _5 ->
    (
# 118 "src/parser/dbacsl_parser.mly"
                                               (
    let size =
      int_of_string _5
      |> Size.Bit.create
      |> Size.Byte.of_bitsize in
    Dba.Expr.load size Machine.LittleEndian _3
  )
# 628 "src/parser/dbacsl_parser.ml"
     : (Dba.Expr.t))

let _menhir_action_38 =
  fun _3 ->
    (
# 125 "src/parser/dbacsl_parser.mly"
                                     (
    Dba.Expr.load (Size.Byte.create 0) Machine.LittleEndian _3
  )
# 638 "src/parser/dbacsl_parser.ml"
     : (Dba.Expr.t))

let _menhir_action_39 =
  fun _2 ->
    (
# 128 "src/parser/dbacsl_parser.mly"
                               ( Dba.Expr.lognot _2 )
# 646 "src/parser/dbacsl_parser.ml"
     : (Dba.Expr.t))

let _menhir_action_40 =
  fun e ->
    (
# 129 "src/parser/dbacsl_parser.mly"
                               ( Dba.Expr.uminus e )
# 654 "src/parser/dbacsl_parser.ml"
     : (Dba.Expr.t))

let _menhir_action_41 =
  fun _2 _4 _6 ->
    (
# 130 "src/parser/dbacsl_parser.mly"
                                           (
    let off1 = int_of_string _4 in
    let off2 = int_of_string _6 in
    Dba.Expr.restrict off1 off2 _2
  )
# 666 "src/parser/dbacsl_parser.ml"
     : (Dba.Expr.t))

let _menhir_action_42 =
  fun _2 _3 ->
    (
# 135 "src/parser/dbacsl_parser.mly"
                  (
    let size = int_of_string _3 in
    Dba.Expr.uext size _2
  )
# 677 "src/parser/dbacsl_parser.ml"
     : (Dba.Expr.t))

let _menhir_action_43 =
  fun _2 _3 ->
    (
# 139 "src/parser/dbacsl_parser.mly"
                  (
    let size = int_of_string _3 in
    Dba.Expr.sext size _2
  )
# 688 "src/parser/dbacsl_parser.ml"
     : (Dba.Expr.t))

let _menhir_action_44 =
  fun _2 _3 _5 ->
    (
# 143 "src/parser/dbacsl_parser.mly"
                               ( Dba.Expr.ite _2 _3 _5 )
# 696 "src/parser/dbacsl_parser.ml"
     : (Dba.Expr.t))

let _menhir_action_45 =
  fun _2 ->
    (
# 144 "src/parser/dbacsl_parser.mly"
                   ( _2 )
# 704 "src/parser/dbacsl_parser.ml"
     : (Dba.Expr.t))

let _menhir_action_46 =
  fun _1 _2 _3 ->
    (
# 145 "src/parser/dbacsl_parser.mly"
                     (
    infer_binary_op_size _1 _2 _3
  )
# 714 "src/parser/dbacsl_parser.ml"
     : (Dba.Expr.t))

let _menhir_action_47 =
  fun _2 _3 _4 ->
    (
# 148 "src/parser/dbacsl_parser.mly"
                               (
    infer_binary_op_size _2 _3 _4
  )
# 724 "src/parser/dbacsl_parser.ml"
     : (Dba.Expr.t))

let _menhir_action_48 =
  fun c ->
    (
# 94 "src/parser/dbacsl_parser.mly"
                                            ( Dba.Instr.assume c 0 )
# 732 "src/parser/dbacsl_parser.ml"
     : (Dba.Instr.t))

let _menhir_action_49 =
  fun c ->
    (
# 94 "src/parser/dbacsl_parser.mly"
                                            ( Dba.Instr.assume c 0 )
# 740 "src/parser/dbacsl_parser.ml"
     : (Dba.Instr.t))

let _menhir_action_50 =
  fun c ->
    (
# 97 "src/parser/dbacsl_parser.mly"
               ( Dba.Instr._assert c 0 )
# 748 "src/parser/dbacsl_parser.ml"
     : (Dba.Instr.t))

let _menhir_action_51 =
  fun c ->
    (
# 97 "src/parser/dbacsl_parser.mly"
               ( Dba.Instr._assert c 0 )
# 756 "src/parser/dbacsl_parser.ml"
     : (Dba.Instr.t))

let _menhir_action_52 =
  fun c ->
    (
# 97 "src/parser/dbacsl_parser.mly"
               ( Dba.Instr._assert c 0 )
# 764 "src/parser/dbacsl_parser.ml"
     : (Dba.Instr.t))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | AND ->
        "AND"
    | ASSERT ->
        "ASSERT"
    | ASSUME ->
        "ASSUME"
    | COMMA ->
        "COMMA"
    | CONCAT ->
        "CONCAT"
    | DIVS ->
        "DIVS"
    | DIVU ->
        "DIVU"
    | ELSE ->
        "ELSE"
    | EOF ->
        "EOF"
    | EQQ ->
        "EQQ"
    | EQQ2 ->
        "EQQ2"
    | EXTS ->
        "EXTS"
    | EXTU ->
        "EXTU"
    | FALSE ->
        "FALSE"
    | GES ->
        "GES"
    | GEU ->
        "GEU"
    | GTS ->
        "GTS"
    | GTU ->
        "GTU"
    | HEXA _ ->
        "HEXA"
    | IDENT _ ->
        "IDENT"
    | IFJUMP ->
        "IFJUMP"
    | INFER ->
        "INFER"
    | INT _ ->
        "INT"
    | LBRACE ->
        "LBRACE"
    | LBRACKET ->
        "LBRACKET"
    | LES ->
        "LES"
    | LEU ->
        "LEU"
    | LPAR ->
        "LPAR"
    | LROTATE ->
        "LROTATE"
    | LSHIFT ->
        "LSHIFT"
    | LTS ->
        "LTS"
    | LTU ->
        "LTU"
    | MINUS ->
        "MINUS"
    | MODS ->
        "MODS"
    | MODU ->
        "MODU"
    | MULTS ->
        "MULTS"
    | MULTU ->
        "MULTU"
    | NEQ ->
        "NEQ"
    | NEQ2 ->
        "NEQ2"
    | NOT ->
        "NOT"
    | OR ->
        "OR"
    | PLUS ->
        "PLUS"
    | RBRACE ->
        "RBRACE"
    | RBRACKET ->
        "RBRACKET"
    | RPAR ->
        "RPAR"
    | RROTATE ->
        "RROTATE"
    | RSHIFTS ->
        "RSHIFTS"
    | RSHIFTU ->
        "RSHIFTU"
    | STORELOAD ->
        "STORELOAD"
    | SUPER ->
        "SUPER"
    | TERM_TOKEN ->
        "TERM_TOKEN"
    | TRUE ->
        "TRUE"
    | UMINUS ->
        "UMINUS"
    | XOR ->
        "XOR"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37"]
  
  let _menhir_goto_term : type  ttv_stack. ttv_stack -> _ -> _menhir_box_term =
    fun _menhir_stack _v ->
      MenhirBox_term _v
  
  let _menhir_run_93 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_term =
    fun _menhir_stack _v _tok ->
      match (_tok : MenhirBasics.token) with
      | EOF ->
          let c = _v in
          let _v = _menhir_action_52 c in
          _menhir_goto_term _menhir_stack _v
      | _ ->
          _eRR ()
  
  let _menhir_run_90 : type  ttv_stack. (ttv_stack, _menhir_box_term) _menhir_cell1_TERM_TOKEN -> _ -> _ -> _menhir_box_term =
    fun _menhir_stack _v _tok ->
      match (_tok : MenhirBasics.token) with
      | EOF ->
          let MenhirCell1_TERM_TOKEN (_menhir_stack, _) = _menhir_stack in
          let c = _v in
          let _v = _menhir_action_50 c in
          _menhir_goto_term _menhir_stack _v
      | _ ->
          _eRR ()
  
  let _menhir_run_87 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_TERM_TOKEN, _menhir_box_term) _menhir_cell1_LPAR -> _ -> _ -> _ -> _ -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | EOF ->
              let MenhirCell1_LPAR (_menhir_stack, _) = _menhir_stack in
              let MenhirCell1_TERM_TOKEN (_menhir_stack, _) = _menhir_stack in
              let c = _v in
              let _v = _menhir_action_51 c in
              _menhir_goto_term _menhir_stack _v
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  let _menhir_run_83 : type  ttv_stack. (ttv_stack, _menhir_box_term) _menhir_cell1_TERM_TOKEN -> _ -> _ -> _menhir_box_term =
    fun _menhir_stack _v _tok ->
      match (_tok : MenhirBasics.token) with
      | EOF ->
          let MenhirCell1_TERM_TOKEN (_menhir_stack, _) = _menhir_stack in
          let c = _v in
          let _v = _menhir_action_48 c in
          _menhir_goto_term _menhir_stack _v
      | _ ->
          _eRR ()
  
  let _menhir_run_80 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_TERM_TOKEN, _menhir_box_term) _menhir_cell1_LPAR -> _ -> _ -> _ -> _ -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | EOF ->
              let MenhirCell1_LPAR (_menhir_stack, _) = _menhir_stack in
              let MenhirCell1_TERM_TOKEN (_menhir_stack, _) = _menhir_stack in
              let c = _v in
              let _v = _menhir_action_49 c in
              _menhir_goto_term _menhir_stack _v
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  let rec _menhir_run_01 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_30 () in
      _menhir_goto_cond _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_cond : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_term) _menhir_state -> _ -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState00 ->
          _menhir_run_93 _menhir_stack _v _tok
      | MenhirState85 ->
          _menhir_run_90 _menhir_stack _v _tok
      | MenhirState86 ->
          _menhir_run_87 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState03 ->
          _menhir_run_83 _menhir_stack _v _tok
      | MenhirState78 ->
          _menhir_run_80 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState14 ->
          _menhir_run_56 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_56 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_IFJUMP as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _ -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_cond (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | STORELOAD ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | NOT ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | MINUS ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | LPAR ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | LBRACE ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | INT _v_0 ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState56
      | IFJUMP ->
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | IDENT _v_1 ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState56
      | HEXA _v_2 ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState56
      | EXTU ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | EXTS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState56
      | _ ->
          _eRR ()
  
  and _menhir_run_04 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_STORELOAD (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LBRACKET ->
          let _menhir_s = MenhirState05 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STORELOAD ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LBRACE ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IFJUMP ->
              _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | HEXA _v ->
              _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | EXTU ->
              _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | EXTS ->
              _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_06 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_NOT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState06 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STORELOAD ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACE ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IFJUMP ->
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_07 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_MINUS (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState07 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STORELOAD ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACE ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IFJUMP ->
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_08 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState08 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STORELOAD ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACE ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IFJUMP ->
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_09 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState09 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STORELOAD ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACE ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IFJUMP ->
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_10 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | INFER ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | INT _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | SUPER ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_1, _3) = (_v, _v_0) in
                  let _v = _menhir_action_33 _1 _3 in
                  _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | AND | COMMA | CONCAT | DIVS | DIVU | ELSE | EOF | EQQ | EQQ2 | EXTS | EXTU | GES | GEU | GTS | GTU | HEXA _ | IDENT _ | IFJUMP | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | MULTS | MULTU | NEQ | NEQ2 | NOT | OR | PLUS | RBRACKET | RPAR | RROTATE | RSHIFTS | RSHIFTU | STORELOAD | XOR ->
          let _1 = _v in
          let _v = _menhir_action_34 _1 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_term) _menhir_state -> _ -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState86 ->
          _menhir_run_79 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState78 ->
          _menhir_run_79 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState05 ->
          _menhir_run_73 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState06 ->
          _menhir_run_72 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState07 ->
          _menhir_run_71 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState68 ->
          _menhir_run_69 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState08 ->
          _menhir_run_66 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState09 ->
          _menhir_run_60 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState58 ->
          _menhir_run_59 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState56 ->
          _menhir_run_57 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState00 ->
          _menhir_run_55 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState85 ->
          _menhir_run_55 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState03 ->
          _menhir_run_55 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState14 ->
          _menhir_run_55 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState18 ->
          _menhir_run_53 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState51 ->
          _menhir_run_52 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState19 ->
          _menhir_run_20 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_79 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_LPAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _ -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | XOR ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | RSHIFTU ->
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | RSHIFTS ->
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | RROTATE ->
          _menhir_run_24 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | RPAR ->
          _menhir_run_67 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | OR ->
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | NEQ2 ->
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | NEQ ->
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | MULTU ->
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | MULTS ->
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | MODU ->
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | MODS ->
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | MINUS ->
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | LTU ->
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | LTS ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | LSHIFT ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | LROTATE ->
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | LEU ->
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | LES ->
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | GTU ->
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | GTS ->
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | GEU ->
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | GES ->
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | EQQ2 ->
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | EQQ ->
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | DIVU ->
          _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | DIVS ->
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | CONCAT ->
          _menhir_run_49 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | AND ->
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState79
      | _ ->
          _eRR ()
  
  and _menhir_run_21 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_05 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_bin_op : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _ -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState79 ->
          _menhir_run_68 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState66 ->
          _menhir_run_68 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState73 ->
          _menhir_run_51 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState72 ->
          _menhir_run_51 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState71 ->
          _menhir_run_51 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState69 ->
          _menhir_run_51 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState60 ->
          _menhir_run_51 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState57 ->
          _menhir_run_51 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState59 ->
          _menhir_run_51 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState55 ->
          _menhir_run_51 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState53 ->
          _menhir_run_51 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState52 ->
          _menhir_run_51 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState20 ->
          _menhir_run_51 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_68 : type  ttv_stack. (((ttv_stack, _menhir_box_term) _menhir_cell1_LPAR, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _ -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_bin_op (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | STORELOAD ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState68
      | NOT ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState68
      | MINUS ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState68
      | LPAR ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState68
      | LBRACE ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState68
      | INT _v_0 ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState68
      | IFJUMP ->
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState68
      | IDENT _v_1 ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState68
      | HEXA _v_2 ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState68
      | EXTU ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState68
      | EXTS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState68
      | _ ->
          _eRR ()
  
  and _menhir_run_14 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_IFJUMP (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState14 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | STORELOAD ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACE ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IFJUMP ->
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTU ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_15 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_36 _1 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_16 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_35 _1 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_17 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_31 () in
      _menhir_goto_cond _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_18 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_EXTU (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState18 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STORELOAD ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACE ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IFJUMP ->
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_19 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_EXTS (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState19 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | STORELOAD ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACE ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IFJUMP ->
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_51 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _ -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_bin_op (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | STORELOAD ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | NOT ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | MINUS ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | LPAR ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | LBRACE ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | INT _v_0 ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState51
      | IFJUMP ->
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | IDENT _v_1 ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState51
      | HEXA _v_2 ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState51
      | EXTU ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | EXTS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState51
      | _ ->
          _eRR ()
  
  and _menhir_run_22 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_26 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_23 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_27 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_24 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_29 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_67 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_LPAR, _menhir_box_term) _menhir_cell1_expr -> _ -> _ -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_expr (_menhir_stack, _, _2) = _menhir_stack in
      let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
      let _v = _menhir_action_45 _2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_25 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_06 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_26 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_03 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_27 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_16 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_28 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_15 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_29 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_08 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_30 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_09 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_31 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_01 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_32 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_02 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_33 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_07 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_34 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_18 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_35 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_22 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_36 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_25 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_37 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_28 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_38 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_17 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_39 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_21 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_41 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_20 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_42 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_24 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_43 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_19 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_44 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_23 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_45 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_14 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_46 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_13 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_47 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_10 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_48 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_11 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_49 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_12 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_50 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_04 () in
      _menhir_goto_bin_op _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_73 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_STORELOAD as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _ -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_24 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | RBRACKET ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_STORELOAD (_menhir_stack, _menhir_s) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_38 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | NEQ2 ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | MULTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | MULTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | EQQ2 ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | DIVU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | DIVS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_49 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | COMMA ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | INT _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | RBRACKET ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let MenhirCell1_STORELOAD (_menhir_stack, _menhir_s) = _menhir_stack in
                  let (_3, _5) = (_v, _v_0) in
                  let _v = _menhir_action_37 _3 _5 in
                  _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState73
      | _ ->
          _eRR ()
  
  and _menhir_run_72 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_NOT as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _ -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | NEQ2 ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState72
      | EQQ2 ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState72
      | AND | COMMA | CONCAT | DIVS | DIVU | ELSE | EOF | EQQ | EXTS | EXTU | GES | GEU | GTS | GTU | HEXA _ | IDENT _ | IFJUMP | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | MULTS | MULTU | NEQ | NOT | OR | PLUS | RBRACKET | RPAR | RROTATE | RSHIFTS | RSHIFTU | STORELOAD | XOR ->
          let MenhirCell1_NOT (_menhir_stack, _menhir_s) = _menhir_stack in
          let _2 = _v in
          let _v = _menhir_action_39 _2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_71 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_MINUS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _ -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | NEQ2 ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState71
      | EQQ2 ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState71
      | AND | COMMA | CONCAT | DIVS | DIVU | ELSE | EOF | EQQ | EXTS | EXTU | GES | GEU | GTS | GTU | HEXA _ | IDENT _ | IFJUMP | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | MULTS | MULTU | NEQ | NOT | OR | PLUS | RBRACKET | RPAR | RROTATE | RSHIFTS | RSHIFTU | STORELOAD | XOR ->
          let MenhirCell1_MINUS (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_40 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_69 : type  ttv_stack. ((((ttv_stack, _menhir_box_term) _menhir_cell1_LPAR, _menhir_box_term) _menhir_cell1_expr, _menhir_box_term) _menhir_cell1_bin_op as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _ -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_24 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | RPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_bin_op (_menhir_stack, _, _3) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, _2) = _menhir_stack in
          let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
          let _4 = _v in
          let _v = _menhir_action_47 _2 _3 _4 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | NEQ2 ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | MULTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | MULTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | EQQ2 ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | DIVU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | DIVS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_49 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState69
      | _ ->
          _eRR ()
  
  and _menhir_run_66 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_LPAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _ -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | XOR ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | RSHIFTU ->
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | RSHIFTS ->
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | RROTATE ->
          _menhir_run_24 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | RPAR ->
          _menhir_run_67 _menhir_stack _menhir_lexbuf _menhir_lexer
      | PLUS ->
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | OR ->
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | NEQ2 ->
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | NEQ ->
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | MULTU ->
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | MULTS ->
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | MODU ->
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | MODS ->
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | MINUS ->
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | LTU ->
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | LTS ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | LSHIFT ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | LROTATE ->
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | LEU ->
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | LES ->
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | GTU ->
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | GTS ->
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | GEU ->
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | GES ->
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | EQQ2 ->
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | EQQ ->
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | DIVU ->
          _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | DIVS ->
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | CONCAT ->
          _menhir_run_49 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | AND ->
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState66
      | _ ->
          _eRR ()
  
  and _menhir_run_60 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_LBRACE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _ -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_24 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | NEQ2 ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | MULTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | MULTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | EQQ2 ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | DIVU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | DIVS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_49 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | COMMA ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | INT _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | COMMA ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | INT _v_1 ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | RBRACE ->
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          let MenhirCell1_LBRACE (_menhir_stack, _menhir_s) = _menhir_stack in
                          let (_4, _2, _6) = (_v_0, _v, _v_1) in
                          let _v = _menhir_action_41 _2 _4 _6 in
                          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState60
      | _ ->
          _eRR ()
  
  and _menhir_run_59 : type  ttv_stack. (((((ttv_stack, _menhir_box_term) _menhir_cell1_IFJUMP, _menhir_box_term) _menhir_cell1_cond, _menhir_box_term) _menhir_cell1_expr, _menhir_box_term) _menhir_cell1_ELSE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _ -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_24 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | NEQ2 ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | MULTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | MULTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | EQQ2 ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | DIVU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | DIVS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_49 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState59
      | COMMA | ELSE | EOF | EXTS | EXTU | HEXA _ | IDENT _ | IFJUMP | INT _ | LBRACE | LPAR | NOT | RBRACKET | RPAR | STORELOAD ->
          let MenhirCell1_ELSE (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, _3) = _menhir_stack in
          let MenhirCell1_cond (_menhir_stack, _, _2) = _menhir_stack in
          let MenhirCell1_IFJUMP (_menhir_stack, _menhir_s) = _menhir_stack in
          let _5 = _v in
          let _v = _menhir_action_44 _2 _3 _5 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_57 : type  ttv_stack. (((ttv_stack, _menhir_box_term) _menhir_cell1_IFJUMP, _menhir_box_term) _menhir_cell1_cond as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _ -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | XOR ->
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | RSHIFTU ->
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | RSHIFTS ->
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | RROTATE ->
          _menhir_run_24 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | PLUS ->
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | OR ->
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | NEQ2 ->
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | NEQ ->
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | MULTU ->
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | MULTS ->
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | MODU ->
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | MODS ->
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | MINUS ->
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | LTU ->
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | LTS ->
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | LSHIFT ->
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | LROTATE ->
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | LEU ->
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | LES ->
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | GTU ->
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | GTS ->
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | GEU ->
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | GES ->
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | EQQ2 ->
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | EQQ ->
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | ELSE ->
          let _menhir_stack = MenhirCell1_ELSE (_menhir_stack, MenhirState57) in
          let _menhir_s = MenhirState58 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STORELOAD ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NOT ->
              _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LBRACE ->
              _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IFJUMP ->
              _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | HEXA _v ->
              _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | EXTU ->
              _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | EXTS ->
              _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | DIVU ->
          _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | DIVS ->
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | CONCAT ->
          _menhir_run_49 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | AND ->
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState57
      | _ ->
          _eRR ()
  
  and _menhir_run_55 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_term) _menhir_state -> _ -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_24 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | NEQ2 ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | MULTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | MULTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | EQQ2 ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | DIVU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | DIVS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_49 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState55
      | EOF | EXTS | EXTU | HEXA _ | IDENT _ | IFJUMP | INT _ | LBRACE | LPAR | NOT | STORELOAD ->
          let e = _v in
          let _v = _menhir_action_32 e in
          _menhir_goto_cond _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_53 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_EXTU as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _ -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_24 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | NEQ2 ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | MULTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | MULTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | INT _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_EXTU (_menhir_stack, _menhir_s) = _menhir_stack in
          let (_3, _2) = (_v_0, _v) in
          let _v = _menhir_action_42 _2 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | EQQ2 ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | DIVU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | DIVS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_49 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState53
      | _ ->
          _eRR ()
  
  and _menhir_run_52 : type  ttv_stack. (((ttv_stack, _menhir_box_term) _menhir_cell1_expr, _menhir_box_term) _menhir_cell1_bin_op as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _ -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_24 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | NEQ2 ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | MULTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | MULTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | EQQ2 ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | DIVU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | DIVS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_49 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState52
      | COMMA | ELSE | EOF | EXTS | EXTU | HEXA _ | IDENT _ | IFJUMP | INT _ | LBRACE | LPAR | NOT | RBRACKET | RPAR | STORELOAD ->
          let MenhirCell1_bin_op (_menhir_stack, _, _2) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, _1) = _menhir_stack in
          let _3 = _v in
          let _v = _menhir_action_46 _1 _2 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_20 : type  ttv_stack. ((ttv_stack, _menhir_box_term) _menhir_cell1_EXTS as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_term) _menhir_state -> _ -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_21 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_22 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_23 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_24 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_25 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_26 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | NEQ2 ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_27 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_28 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | MULTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_29 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | MULTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_30 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_31 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_32 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_33 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_34 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_35 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_36 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_37 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_38 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_39 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | INT _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_EXTS (_menhir_stack, _menhir_s) = _menhir_stack in
          let (_3, _2) = (_v_0, _v) in
          let _v = _menhir_action_43 _2 _3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_41 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_42 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_43 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_44 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | EQQ2 ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_45 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | EQQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_46 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | DIVU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_47 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | DIVS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_48 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_49 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_50 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
      | _ ->
          _eRR ()
  
  let _menhir_run_00 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_term =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState00 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TERM_TOKEN ->
          let _menhir_stack = MenhirCell1_TERM_TOKEN (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | ASSUME ->
              let _menhir_s = MenhirState03 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TRUE ->
                  _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | STORELOAD ->
                  _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | NOT ->
                  _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | MINUS ->
                  _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | LPAR ->
                  let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
                  let _menhir_s = MenhirState78 in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | TRUE ->
                      _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | STORELOAD ->
                      _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | NOT ->
                      _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | MINUS ->
                      _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | LPAR ->
                      _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | LBRACE ->
                      _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | INT _v ->
                      _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | IFJUMP ->
                      _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | IDENT _v ->
                      _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | HEXA _v ->
                      _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | FALSE ->
                      _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | EXTU ->
                      _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | EXTS ->
                      _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | _ ->
                      _eRR ())
              | LBRACE ->
                  _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | INT _v ->
                  _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | IFJUMP ->
                  _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | HEXA _v ->
                  _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | FALSE ->
                  _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | EXTU ->
                  _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | EXTS ->
                  _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | ASSERT ->
              let _menhir_s = MenhirState85 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TRUE ->
                  _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | STORELOAD ->
                  _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | NOT ->
                  _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | MINUS ->
                  _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | LPAR ->
                  let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
                  let _menhir_s = MenhirState86 in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | TRUE ->
                      _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | STORELOAD ->
                      _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | NOT ->
                      _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | MINUS ->
                      _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | LPAR ->
                      _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | LBRACE ->
                      _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | INT _v ->
                      _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | IFJUMP ->
                      _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | IDENT _v ->
                      _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | HEXA _v ->
                      _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | FALSE ->
                      _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | EXTU ->
                      _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | EXTS ->
                      _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | _ ->
                      _eRR ())
              | LBRACE ->
                  _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | INT _v ->
                  _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | IFJUMP ->
                  _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | HEXA _v ->
                  _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | FALSE ->
                  _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | EXTU ->
                  _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | EXTS ->
                  _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | STORELOAD ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | NOT ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LBRACE ->
          _menhir_run_09 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IFJUMP ->
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTU ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_19 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
end

let term =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_term v = _menhir_run_00 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
