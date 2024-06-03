
type ('dypgen__Binop, 'dypgen__Decl, 'dypgen__Expr, 'dypgen__Instr,
      'dypgen__Lex_dquote, 'dypgen__Lex_dquote_Arg_buf, 'dypgen__Lex_quote,
      'dypgen__Lex_quote_Arg_buf, 'dypgen__Loc, 'dypgen__Obj,
      'dypgen__Obj_accept_newline, 'dypgen__Obj_array, 'dypgen__Obj_attr,
      'dypgen__Obj_dypgen__nested_nt_0, 'dypgen__Obj_dypgen__nested_nt_1,
      'dypgen__Obj_dypgen__nested_nt_10, 'dypgen__Obj_dypgen__nested_nt_11,
      'dypgen__Obj_dypgen__nested_nt_12, 'dypgen__Obj_dypgen__nested_nt_13,
      'dypgen__Obj_dypgen__nested_nt_14, 'dypgen__Obj_dypgen__nested_nt_15,
      'dypgen__Obj_dypgen__nested_nt_16, 'dypgen__Obj_dypgen__nested_nt_17,
      'dypgen__Obj_dypgen__nested_nt_18, 'dypgen__Obj_dypgen__nested_nt_19,
      'dypgen__Obj_dypgen__nested_nt_2, 'dypgen__Obj_dypgen__nested_nt_20,
      'dypgen__Obj_dypgen__nested_nt_21, 'dypgen__Obj_dypgen__nested_nt_22,
      'dypgen__Obj_dypgen__nested_nt_23, 'dypgen__Obj_dypgen__nested_nt_24,
      'dypgen__Obj_dypgen__nested_nt_3, 'dypgen__Obj_dypgen__nested_nt_4,
      'dypgen__Obj_dypgen__nested_nt_5, 'dypgen__Obj_dypgen__nested_nt_6,
      'dypgen__Obj_dypgen__nested_nt_7, 'dypgen__Obj_dypgen__nested_nt_8,
      'dypgen__Obj_dypgen__nested_nt_9, 'dypgen__Obj_endianness,
      'dypgen__Obj_newline, 'dypgen__Obj_range, 'dypgen__Obj_separator,
      'dypgen__Program, 'dypgen__Stmt, 'dypgen__String, 'dypgen__Symbol,
      'dypgen__Unop)
     obj =
    Binop of 'dypgen__Binop
  | Decl of 'dypgen__Decl
  | Expr of 'dypgen__Expr
  | Instr of 'dypgen__Instr
  | Lex_dquote of 'dypgen__Lex_dquote
  | Lex_dquote_Arg_buf of 'dypgen__Lex_dquote_Arg_buf
  | Lex_quote of 'dypgen__Lex_quote
  | Lex_quote_Arg_buf of 'dypgen__Lex_quote_Arg_buf
  | Lexeme_matched of string
  | Loc of 'dypgen__Loc
  | Obj of 'dypgen__Obj
  | Obj_ABORT
  | Obj_AS
  | Obj_ASCII
  | Obj_ASR
  | Obj_ASSERT
  | Obj_ASSET
  | Obj_ASSUME
  | Obj_AT
  | Obj_BIN
  | Obj_BY
  | Obj_CASE
  | Obj_CONST of Binsec.Bitvector.t
  | Obj_CORE
  | Obj_CSTRING
  | Obj_CUT
  | Obj_DEC
  | Obj_DO
  | Obj_ELSE
  | Obj_END
  | Obj_ENUMERATE
  | Obj_FILE
  | Obj_FOR
  | Obj_FORMULA
  | Obj_FROM
  | Obj_GOTO
  | Obj_HALT
  | Obj_HEXA
  | Obj_IF
  | Obj_IMPORT
  | Obj_IN
  | Obj_INT of Z.t
  | Obj_IS
  | Obj_JUMP
  | Obj_LAST
  | Obj_LOAD
  | Obj_LSL
  | Obj_LSR
  | Obj_MODEL
  | Obj_NONDET
  | Obj_PRINT
  | Obj_REACH
  | Obj_REPLACE
  | Obj_ROL
  | Obj_ROR
  | Obj_SECTION
  | Obj_SECTIONS
  | Obj_SEXT of int
  | Obj_SIZE
  | Obj_STARTING
  | Obj_STREAM
  | Obj_SUCH
  | Obj_THAT
  | Obj_THEN
  | Obj_TIMES
  | Obj_TO
  | Obj_UNDEF
  | Obj_VALUE
  | Obj_WHILE
  | Obj_WITH
  | Obj_ZEXT of int
  | Obj___dypgen_layout
  | Obj_accept_newline of 'dypgen__Obj_accept_newline
  | Obj_array of 'dypgen__Obj_array
  | Obj_attr of 'dypgen__Obj_attr
  | Obj_dypgen__nested_nt_0 of 'dypgen__Obj_dypgen__nested_nt_0
  | Obj_dypgen__nested_nt_1 of 'dypgen__Obj_dypgen__nested_nt_1
  | Obj_dypgen__nested_nt_10 of 'dypgen__Obj_dypgen__nested_nt_10
  | Obj_dypgen__nested_nt_11 of 'dypgen__Obj_dypgen__nested_nt_11
  | Obj_dypgen__nested_nt_12 of 'dypgen__Obj_dypgen__nested_nt_12
  | Obj_dypgen__nested_nt_13 of 'dypgen__Obj_dypgen__nested_nt_13
  | Obj_dypgen__nested_nt_14 of 'dypgen__Obj_dypgen__nested_nt_14
  | Obj_dypgen__nested_nt_15 of 'dypgen__Obj_dypgen__nested_nt_15
  | Obj_dypgen__nested_nt_16 of 'dypgen__Obj_dypgen__nested_nt_16
  | Obj_dypgen__nested_nt_17 of 'dypgen__Obj_dypgen__nested_nt_17
  | Obj_dypgen__nested_nt_18 of 'dypgen__Obj_dypgen__nested_nt_18
  | Obj_dypgen__nested_nt_19 of 'dypgen__Obj_dypgen__nested_nt_19
  | Obj_dypgen__nested_nt_2 of 'dypgen__Obj_dypgen__nested_nt_2
  | Obj_dypgen__nested_nt_20 of 'dypgen__Obj_dypgen__nested_nt_20
  | Obj_dypgen__nested_nt_21 of 'dypgen__Obj_dypgen__nested_nt_21
  | Obj_dypgen__nested_nt_22 of 'dypgen__Obj_dypgen__nested_nt_22
  | Obj_dypgen__nested_nt_23 of 'dypgen__Obj_dypgen__nested_nt_23
  | Obj_dypgen__nested_nt_24 of 'dypgen__Obj_dypgen__nested_nt_24
  | Obj_dypgen__nested_nt_3 of 'dypgen__Obj_dypgen__nested_nt_3
  | Obj_dypgen__nested_nt_4 of 'dypgen__Obj_dypgen__nested_nt_4
  | Obj_dypgen__nested_nt_5 of 'dypgen__Obj_dypgen__nested_nt_5
  | Obj_dypgen__nested_nt_6 of 'dypgen__Obj_dypgen__nested_nt_6
  | Obj_dypgen__nested_nt_7 of 'dypgen__Obj_dypgen__nested_nt_7
  | Obj_dypgen__nested_nt_8 of 'dypgen__Obj_dypgen__nested_nt_8
  | Obj_dypgen__nested_nt_9 of 'dypgen__Obj_dypgen__nested_nt_9
  | Obj_dypgen__star___stmt of 'dypgen__Stmt list
  | Obj_endianness of 'dypgen__Obj_endianness
  | Obj_newline of 'dypgen__Obj_newline
  | Obj_range of 'dypgen__Obj_range
  | Obj_separator of 'dypgen__Obj_separator
  | Program of 'dypgen__Program
  | Stmt of 'dypgen__Stmt
  | String of 'dypgen__String
  | Symbol of 'dypgen__Symbol
  | Unop of 'dypgen__Unop
  | Dypgen__dummy_obj_cons

val pp :
  unit ->
  (unit,
   (Binsec.Ast.Expr.t Binsec.Ast.loc ->
    Binsec.Ast.Expr.t Binsec.Ast.loc -> Binsec.Ast.Expr.t, 'a,
    Binsec.Ast.Expr.t Binsec.Ast.loc, Binsec.Ast.Instr.t, unit, Buffer.t,
    unit, Buffer.t, Binsec.Ast.Loc.t Binsec.Ast.loc, 'b, unit, string option,
    Binsec.Dba.Var.Tag.attribute, Binsec.Dba.Var.Tag.attribute,
    Binsec.Dba.Var.Tag.attribute option,
    ((Binsec.Ast.Expr.t Binsec.Ast.loc ->
      Binsec.Ast.Expr.t Binsec.Ast.loc -> Binsec.Ast.Expr.t) *
     Binsec.Ast.Expr.t Binsec.Ast.loc)
    list,
    Binsec.Ast.Expr.t Binsec.Ast.loc * Binsec.Ast.Expr.t Binsec.Ast.loc,
    (Binsec.Ast.Expr.t Binsec.Ast.loc * Binsec.Ast.Expr.t Binsec.Ast.loc)
    list,
    (Binsec.Ast.Expr.t Binsec.Ast.loc * Binsec.Ast.Expr.t Binsec.Ast.loc)
    list, Binsec.Ast.Instr.t list, Binsec.Ast.Instr.t list list,
    Binsec.Ast.Instr.t list list,
    Binsec.Ast.Expr.t Binsec.Ast.loc * Binsec.Ast.Instr.t list,
    (Binsec.Ast.Expr.t Binsec.Ast.loc * Binsec.Ast.Instr.t list) list,
    (Binsec.Ast.Expr.t Binsec.Ast.loc * Binsec.Ast.Instr.t list) list, 
    Z.t, Binsec.Ast.Instr.t list, Binsec.Ast.Instr.t list option, string,
    string option, Binsec.Ast.Instr.t list list, Z.t option,
    Binsec.Machine.endianness, Binsec.Machine.endianness option, Z.t,
    Z.t option,
    (Binsec.Ast.Expr.t Binsec.Ast.loc ->
     Binsec.Ast.Expr.t Binsec.Ast.loc -> Binsec.Ast.Expr.t) *
    Binsec.Ast.Expr.t Binsec.Ast.loc,
    ((Binsec.Ast.Expr.t Binsec.Ast.loc ->
      Binsec.Ast.Expr.t Binsec.Ast.loc -> Binsec.Ast.Expr.t) *
     Binsec.Ast.Expr.t Binsec.Ast.loc)
    list, Binsec.Machine.endianness, unit, int Binsec.Interval.t, unit, 'c,
    Binsec.Ast.Instr.t list, string, Binsec.Ast.Symbol.t Binsec.Ast.loc,
    Binsec.Ast.Expr.t Binsec.Ast.loc -> Binsec.Ast.Expr.t)
   obj, unit, unit, 'd Dyp.dyplexbuf)
  Dyp.parser_pilot

val stmts :
  ?global_data:unit ->
  ?local_data:unit ->
  (Binsec.Ast.Expr.t Binsec.Ast.loc ->
   Binsec.Ast.Expr.t Binsec.Ast.loc -> Binsec.Ast.Expr.t, 'a,
   Binsec.Ast.Expr.t Binsec.Ast.loc, Binsec.Ast.Instr.t, unit, Buffer.t,
   unit, Buffer.t, Binsec.Ast.Loc.t Binsec.Ast.loc, 'b, unit, string option,
   Binsec.Dba.Var.Tag.attribute, Binsec.Dba.Var.Tag.attribute,
   Binsec.Dba.Var.Tag.attribute option,
   ((Binsec.Ast.Expr.t Binsec.Ast.loc ->
     Binsec.Ast.Expr.t Binsec.Ast.loc -> Binsec.Ast.Expr.t) *
    Binsec.Ast.Expr.t Binsec.Ast.loc)
   list, Binsec.Ast.Expr.t Binsec.Ast.loc * Binsec.Ast.Expr.t Binsec.Ast.loc,
   (Binsec.Ast.Expr.t Binsec.Ast.loc * Binsec.Ast.Expr.t Binsec.Ast.loc) list,
   (Binsec.Ast.Expr.t Binsec.Ast.loc * Binsec.Ast.Expr.t Binsec.Ast.loc) list,
   Binsec.Ast.Instr.t list, Binsec.Ast.Instr.t list list,
   Binsec.Ast.Instr.t list list,
   Binsec.Ast.Expr.t Binsec.Ast.loc * Binsec.Ast.Instr.t list,
   (Binsec.Ast.Expr.t Binsec.Ast.loc * Binsec.Ast.Instr.t list) list,
   (Binsec.Ast.Expr.t Binsec.Ast.loc * Binsec.Ast.Instr.t list) list, 
   Z.t, Binsec.Ast.Instr.t list, Binsec.Ast.Instr.t list option, string,
   string option, Binsec.Ast.Instr.t list list, Z.t option,
   Binsec.Machine.endianness, Binsec.Machine.endianness option, Z.t,
   Z.t option,
   (Binsec.Ast.Expr.t Binsec.Ast.loc ->
    Binsec.Ast.Expr.t Binsec.Ast.loc -> Binsec.Ast.Expr.t) *
   Binsec.Ast.Expr.t Binsec.Ast.loc,
   ((Binsec.Ast.Expr.t Binsec.Ast.loc ->
     Binsec.Ast.Expr.t Binsec.Ast.loc -> Binsec.Ast.Expr.t) *
    Binsec.Ast.Expr.t Binsec.Ast.loc)
   list, Binsec.Machine.endianness, unit, int Binsec.Interval.t, unit, 'c,
   Binsec.Ast.Instr.t list, string, Binsec.Ast.Symbol.t Binsec.Ast.loc,
   Binsec.Ast.Expr.t Binsec.Ast.loc -> Binsec.Ast.Expr.t)
  obj Dyp.dyplexbuf -> (Binsec.Ast.Instr.t list * string) list


