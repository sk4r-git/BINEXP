
let _ =
  if "20191116" <> Dyp.version
  then (Printf.fprintf stderr
    "version mismatch, dypgen version 20191116 and dyplib version %s\n" Dyp.version;
  exit 2)

module Dyp_symbols =
struct
  let get_token_name () = 0
  let str_token _ = failwith "str_token must not be called with dypgen lexers"
  let ter_string_list = [
      ("ABORT",0);
      ("AS",1);
      ("ASCII",2);
      ("ASR",3);
      ("ASSERT",4);
      ("ASSET",5);
      ("ASSUME",6);
      ("AT",7);
      ("BIN",8);
      ("BY",9);
      ("CASE",10);
      ("CONST",11);
      ("CORE",12);
      ("CSTRING",13);
      ("CUT",14);
      ("DEC",15);
      ("DO",16);
      ("ELSE",17);
      ("END",18);
      ("ENUMERATE",19);
      ("FILE",20);
      ("FOR",21);
      ("FORMULA",22);
      ("FROM",23);
      ("GOTO",24);
      ("HALT",25);
      ("HEXA",26);
      ("IF",27);
      ("IMPORT",28);
      ("IN",29);
      ("INT",30);
      ("IS",31);
      ("JUMP",32);
      ("LAST",33);
      ("LOAD",34);
      ("LSL",35);
      ("LSR",36);
      ("MODEL",37);
      ("NONDET",38);
      ("PRINT",39);
      ("REACH",40);
      ("REPLACE",41);
      ("ROL",42);
      ("ROR",43);
      ("SECTION",44);
      ("SECTIONS",45);
      ("SEXT",46);
      ("SIZE",47);
      ("STARTING",48);
      ("STREAM",49);
      ("SUCH",50);
      ("THAT",51);
      ("THEN",52);
      ("TIMES",53);
      ("TO",54);
      ("UNDEF",55);
      ("VALUE",56);
      ("WHILE",57);
      ("WITH",58);
      ("ZEXT",59);
      ("__dypgen_layout",60);]
end

type ('dypgen__Binop, 'dypgen__Decl, 'dypgen__Expr, 'dypgen__Instr, 'dypgen__Lex_dquote, 'dypgen__Lex_dquote_Arg_buf, 'dypgen__Lex_quote, 'dypgen__Lex_quote_Arg_buf, 'dypgen__Loc, 'dypgen__Obj, 'dypgen__Obj_accept_newline, 'dypgen__Obj_array, 'dypgen__Obj_attr, 'dypgen__Obj_dypgen__nested_nt_0, 'dypgen__Obj_dypgen__nested_nt_1, 'dypgen__Obj_dypgen__nested_nt_10, 'dypgen__Obj_dypgen__nested_nt_11, 'dypgen__Obj_dypgen__nested_nt_12, 'dypgen__Obj_dypgen__nested_nt_13, 'dypgen__Obj_dypgen__nested_nt_14, 'dypgen__Obj_dypgen__nested_nt_15, 'dypgen__Obj_dypgen__nested_nt_16, 'dypgen__Obj_dypgen__nested_nt_17, 'dypgen__Obj_dypgen__nested_nt_18, 'dypgen__Obj_dypgen__nested_nt_19, 'dypgen__Obj_dypgen__nested_nt_2, 'dypgen__Obj_dypgen__nested_nt_20, 'dypgen__Obj_dypgen__nested_nt_21, 'dypgen__Obj_dypgen__nested_nt_22, 'dypgen__Obj_dypgen__nested_nt_23, 'dypgen__Obj_dypgen__nested_nt_24, 'dypgen__Obj_dypgen__nested_nt_3, 'dypgen__Obj_dypgen__nested_nt_4, 'dypgen__Obj_dypgen__nested_nt_5, 'dypgen__Obj_dypgen__nested_nt_6, 'dypgen__Obj_dypgen__nested_nt_7, 'dypgen__Obj_dypgen__nested_nt_8, 'dypgen__Obj_dypgen__nested_nt_9, 'dypgen__Obj_endianness, 'dypgen__Obj_newline, 'dypgen__Obj_range, 'dypgen__Obj_separator, 'dypgen__Program, 'dypgen__Stmt, 'dypgen__String, 'dypgen__Symbol, 'dypgen__Unop) obj =
  | Binop of 'dypgen__Binop
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
  | Obj_CONST of (Bitvector.t)
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
  | Obj_INT of (Z.t)
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
  | Obj_SEXT of (int)
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
  | Obj_ZEXT of (int)
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

module Dyp_symbols_array =
struct
  let token_name_array =
  [|"ABORT";
    "AS";
    "ASCII";
    "ASR";
    "ASSERT";
    "ASSET";
    "ASSUME";
    "AT";
    "BIN";
    "BY";
    "CASE";
    "CONST";
    "CORE";
    "CSTRING";
    "CUT";
    "DEC";
    "DO";
    "ELSE";
    "END";
    "ENUMERATE";
    "FILE";
    "FOR";
    "FORMULA";
    "FROM";
    "GOTO";
    "HALT";
    "HEXA";
    "IF";
    "IMPORT";
    "IN";
    "INT";
    "IS";
    "JUMP";
    "LAST";
    "LOAD";
    "LSL";
    "LSR";
    "MODEL";
    "NONDET";
    "PRINT";
    "REACH";
    "REPLACE";
    "ROL";
    "ROR";
    "SECTION";
    "SECTIONS";
    "SEXT";
    "SIZE";
    "STARTING";
    "STREAM";
    "SUCH";
    "THAT";
    "THEN";
    "TIMES";
    "TO";
    "UNDEF";
    "VALUE";
    "WHILE";
    "WITH";
    "ZEXT";
    "__dypgen_layout"|]
  let nt_cons_list =
  [
    ("accept_newline",15);
    ("arith0",0);
    ("arith1",0);
    ("array",16);
    ("assignment",3);
    ("attr",17);
    ("bitwize0",0);
    ("bitwize1",0);
    ("block",49);
    ("cmpop",0);
    ("const",2);
    ("control",49);
    ("dypgen__nested_nt_0",18);
    ("dypgen__nested_nt_1",19);
    ("dypgen__nested_nt_10",20);
    ("dypgen__nested_nt_11",21);
    ("dypgen__nested_nt_12",22);
    ("dypgen__nested_nt_13",23);
    ("dypgen__nested_nt_14",24);
    ("dypgen__nested_nt_15",25);
    ("dypgen__nested_nt_16",26);
    ("dypgen__nested_nt_17",27);
    ("dypgen__nested_nt_18",28);
    ("dypgen__nested_nt_19",29);
    ("dypgen__nested_nt_2",30);
    ("dypgen__nested_nt_20",31);
    ("dypgen__nested_nt_21",32);
    ("dypgen__nested_nt_22",33);
    ("dypgen__nested_nt_23",34);
    ("dypgen__nested_nt_24",35);
    ("dypgen__nested_nt_3",36);
    ("dypgen__nested_nt_4",37);
    ("dypgen__nested_nt_5",38);
    ("dypgen__nested_nt_6",39);
    ("dypgen__nested_nt_7",40);
    ("dypgen__nested_nt_8",41);
    ("dypgen__nested_nt_9",42);
    ("dypgen__star___stmt",43);
    ("endianness",44);
    ("expr",2);
    ("ext",52);
    ("fallthrough",3);
    ("ident",50);
    ("instr",49);
    ("instr_or_block",49);
    ("label",50);
    ("labelled",49);
    ("load",9);
    ("loc",9);
    ("newline",45);
    ("program",48);
    ("range",46);
    ("separator",47);
    ("stmt",49);
    ("stmts",49);
    ("symbol",51);
    ("terminator",3);
    ("unop",52);
    ("var",9);
    ("wident",50)]
  let str_cons o = match o with
    | Binop _ -> "Binop"
    | Decl _ -> "Decl"
    | Expr _ -> "Expr"
    | Instr _ -> "Instr"
    | Lex_dquote _ -> "Lex_dquote"
    | Lex_dquote_Arg_buf _ -> "Lex_dquote_Arg_buf"
    | Lex_quote _ -> "Lex_quote"
    | Lex_quote_Arg_buf _ -> "Lex_quote_Arg_buf"
    | Lexeme_matched _ -> "Lexeme_matched"
    | Loc _ -> "Loc"
    | Obj _ -> "Obj"
    | Obj_CONST _ -> "Obj_CONST"
    | Obj_INT _ -> "Obj_INT"
    | Obj_SEXT _ -> "Obj_SEXT"
    | Obj_ZEXT _ -> "Obj_ZEXT"
    | Obj_accept_newline _ -> "Obj_accept_newline"
    | Obj_array _ -> "Obj_array"
    | Obj_attr _ -> "Obj_attr"
    | Obj_dypgen__nested_nt_0 _ -> "Obj_dypgen__nested_nt_0"
    | Obj_dypgen__nested_nt_1 _ -> "Obj_dypgen__nested_nt_1"
    | Obj_dypgen__nested_nt_10 _ -> "Obj_dypgen__nested_nt_10"
    | Obj_dypgen__nested_nt_11 _ -> "Obj_dypgen__nested_nt_11"
    | Obj_dypgen__nested_nt_12 _ -> "Obj_dypgen__nested_nt_12"
    | Obj_dypgen__nested_nt_13 _ -> "Obj_dypgen__nested_nt_13"
    | Obj_dypgen__nested_nt_14 _ -> "Obj_dypgen__nested_nt_14"
    | Obj_dypgen__nested_nt_15 _ -> "Obj_dypgen__nested_nt_15"
    | Obj_dypgen__nested_nt_16 _ -> "Obj_dypgen__nested_nt_16"
    | Obj_dypgen__nested_nt_17 _ -> "Obj_dypgen__nested_nt_17"
    | Obj_dypgen__nested_nt_18 _ -> "Obj_dypgen__nested_nt_18"
    | Obj_dypgen__nested_nt_19 _ -> "Obj_dypgen__nested_nt_19"
    | Obj_dypgen__nested_nt_2 _ -> "Obj_dypgen__nested_nt_2"
    | Obj_dypgen__nested_nt_20 _ -> "Obj_dypgen__nested_nt_20"
    | Obj_dypgen__nested_nt_21 _ -> "Obj_dypgen__nested_nt_21"
    | Obj_dypgen__nested_nt_22 _ -> "Obj_dypgen__nested_nt_22"
    | Obj_dypgen__nested_nt_23 _ -> "Obj_dypgen__nested_nt_23"
    | Obj_dypgen__nested_nt_24 _ -> "Obj_dypgen__nested_nt_24"
    | Obj_dypgen__nested_nt_3 _ -> "Obj_dypgen__nested_nt_3"
    | Obj_dypgen__nested_nt_4 _ -> "Obj_dypgen__nested_nt_4"
    | Obj_dypgen__nested_nt_5 _ -> "Obj_dypgen__nested_nt_5"
    | Obj_dypgen__nested_nt_6 _ -> "Obj_dypgen__nested_nt_6"
    | Obj_dypgen__nested_nt_7 _ -> "Obj_dypgen__nested_nt_7"
    | Obj_dypgen__nested_nt_8 _ -> "Obj_dypgen__nested_nt_8"
    | Obj_dypgen__nested_nt_9 _ -> "Obj_dypgen__nested_nt_9"
    | Obj_dypgen__star___stmt _ -> "Obj_dypgen__star___stmt"
    | Obj_endianness _ -> "Obj_endianness"
    | Obj_newline _ -> "Obj_newline"
    | Obj_range _ -> "Obj_range"
    | Obj_separator _ -> "Obj_separator"
    | Program _ -> "Program"
    | Stmt _ -> "Stmt"
    | String _ -> "String"
    | Symbol _ -> "Symbol"
    | Unop _ -> "Unop"
    | _ -> failwith "str_cons, unexpected constructor"
  let cons_array = [|
    "Binop";
    "Decl";
    "Expr";
    "Instr";
    "Lex_dquote";
    "Lex_dquote_Arg_buf";
    "Lex_quote";
    "Lex_quote_Arg_buf";
    "Lexeme_matched";
    "Loc";
    "Obj";
    "Obj_CONST";
    "Obj_INT";
    "Obj_SEXT";
    "Obj_ZEXT";
    "Obj_accept_newline";
    "Obj_array";
    "Obj_attr";
    "Obj_dypgen__nested_nt_0";
    "Obj_dypgen__nested_nt_1";
    "Obj_dypgen__nested_nt_10";
    "Obj_dypgen__nested_nt_11";
    "Obj_dypgen__nested_nt_12";
    "Obj_dypgen__nested_nt_13";
    "Obj_dypgen__nested_nt_14";
    "Obj_dypgen__nested_nt_15";
    "Obj_dypgen__nested_nt_16";
    "Obj_dypgen__nested_nt_17";
    "Obj_dypgen__nested_nt_18";
    "Obj_dypgen__nested_nt_19";
    "Obj_dypgen__nested_nt_2";
    "Obj_dypgen__nested_nt_20";
    "Obj_dypgen__nested_nt_21";
    "Obj_dypgen__nested_nt_22";
    "Obj_dypgen__nested_nt_23";
    "Obj_dypgen__nested_nt_24";
    "Obj_dypgen__nested_nt_3";
    "Obj_dypgen__nested_nt_4";
    "Obj_dypgen__nested_nt_5";
    "Obj_dypgen__nested_nt_6";
    "Obj_dypgen__nested_nt_7";
    "Obj_dypgen__nested_nt_8";
    "Obj_dypgen__nested_nt_9";
    "Obj_dypgen__star___stmt";
    "Obj_endianness";
    "Obj_newline";
    "Obj_range";
    "Obj_separator";
    "Program";
    "Stmt";
    "String";
    "Symbol";
    "Unop";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
  |]
  let entry_points = [
    "stmts";]
end

let dypgen_lexbuf_position lexbuf = Dyp.dyplex_lexbuf_position lexbuf

module Dyp_aux_functions =
struct
  let get_token_value _ = Dypgen__dummy_obj_cons
  let cons_table = Dyp.Tools.hashtbl_of_array Dyp_symbols_array.cons_array
end

module Dyp_priority_data =
struct
  let relations = [
    ["core";"ext";"unary";"arith0";"bitwize0";"arith1";"bitwize1";"concat";"diff";"ineq";"logand";"logor";];
  ]
end

let global_data = ()
let local_data = ()
let global_data_equal = (==)
let local_data_equal = (==)

let dyp_merge_Binop = Dyp.Tools.keep_zero
let dyp_merge_Decl = Dyp.Tools.keep_zero
let dyp_merge_Expr = Dyp.Tools.keep_zero
let dyp_merge_Instr = Dyp.Tools.keep_zero
let dyp_merge_Lex_dquote = Dyp.Tools.keep_zero
let dyp_merge_Lex_dquote_Arg_buf = Dyp.Tools.keep_zero
let dyp_merge_Lex_quote = Dyp.Tools.keep_zero
let dyp_merge_Lex_quote_Arg_buf = Dyp.Tools.keep_zero
let dyp_merge_Lexeme_matched = Dyp.Tools.keep_zero
let dyp_merge_Loc = Dyp.Tools.keep_zero
let dyp_merge_Obj = Dyp.Tools.keep_zero
let dyp_merge_Obj_CONST = Dyp.Tools.keep_zero
let dyp_merge_Obj_INT = Dyp.Tools.keep_zero
let dyp_merge_Obj_SEXT = Dyp.Tools.keep_zero
let dyp_merge_Obj_ZEXT = Dyp.Tools.keep_zero
let dyp_merge_Obj_accept_newline = Dyp.Tools.keep_zero
let dyp_merge_Obj_array = Dyp.Tools.keep_zero
let dyp_merge_Obj_attr = Dyp.Tools.keep_zero
let dyp_merge_Obj_dypgen__nested_nt_0 = Dyp.Tools.keep_zero
let dyp_merge_Obj_dypgen__nested_nt_1 = Dyp.Tools.keep_zero
let dyp_merge_Obj_dypgen__nested_nt_10 = Dyp.Tools.keep_zero
let dyp_merge_Obj_dypgen__nested_nt_11 = Dyp.Tools.keep_zero
let dyp_merge_Obj_dypgen__nested_nt_12 = Dyp.Tools.keep_zero
let dyp_merge_Obj_dypgen__nested_nt_13 = Dyp.Tools.keep_zero
let dyp_merge_Obj_dypgen__nested_nt_14 = Dyp.Tools.keep_zero
let dyp_merge_Obj_dypgen__nested_nt_15 = Dyp.Tools.keep_zero
let dyp_merge_Obj_dypgen__nested_nt_16 = Dyp.Tools.keep_zero
let dyp_merge_Obj_dypgen__nested_nt_17 = Dyp.Tools.keep_zero
let dyp_merge_Obj_dypgen__nested_nt_18 = Dyp.Tools.keep_zero
let dyp_merge_Obj_dypgen__nested_nt_19 = Dyp.Tools.keep_zero
let dyp_merge_Obj_dypgen__nested_nt_2 = Dyp.Tools.keep_zero
let dyp_merge_Obj_dypgen__nested_nt_20 = Dyp.Tools.keep_zero
let dyp_merge_Obj_dypgen__nested_nt_21 = Dyp.Tools.keep_zero
let dyp_merge_Obj_dypgen__nested_nt_22 = Dyp.Tools.keep_zero
let dyp_merge_Obj_dypgen__nested_nt_23 = Dyp.Tools.keep_zero
let dyp_merge_Obj_dypgen__nested_nt_24 = Dyp.Tools.keep_zero
let dyp_merge_Obj_dypgen__nested_nt_3 = Dyp.Tools.keep_zero
let dyp_merge_Obj_dypgen__nested_nt_4 = Dyp.Tools.keep_zero
let dyp_merge_Obj_dypgen__nested_nt_5 = Dyp.Tools.keep_zero
let dyp_merge_Obj_dypgen__nested_nt_6 = Dyp.Tools.keep_zero
let dyp_merge_Obj_dypgen__nested_nt_7 = Dyp.Tools.keep_zero
let dyp_merge_Obj_dypgen__nested_nt_8 = Dyp.Tools.keep_zero
let dyp_merge_Obj_dypgen__nested_nt_9 = Dyp.Tools.keep_zero
let dyp_merge_Obj_dypgen__star___stmt = Dyp.Tools.keep_zero
let dyp_merge_Obj_endianness = Dyp.Tools.keep_zero
let dyp_merge_Obj_newline = Dyp.Tools.keep_zero
let dyp_merge_Obj_range = Dyp.Tools.keep_zero
let dyp_merge_Obj_separator = Dyp.Tools.keep_zero
let dyp_merge_Program = Dyp.Tools.keep_zero
let dyp_merge_Stmt = Dyp.Tools.keep_zero
let dyp_merge_String = Dyp.Tools.keep_zero
let dyp_merge_Symbol = Dyp.Tools.keep_zero
let dyp_merge_Unop = Dyp.Tools.keep_zero
let dyp_merge = Dyp.keep_one
let dypgen_match_length = `shortest
let dypgen_choose_token = `first
let dypgen_keep_data = `both
let dypgen_use_rule_order = false
let dypgen_use_all_actions = false

# 22 "syntax.dyp"

  let dypgen_match_length = `longest

  let string f lexbuf =
    let buf = Buffer.create 16 in
    f buf lexbuf;
    let s = Scanf.unescaped (Buffer.contents buf) in
    Bitvector.create (Z.of_bits s) (8 * String.length s)

  let uid =
    let i = ref 0 in
    fun () -> incr i; Format.sprintf "%%%d" !i

let _ = () (* dummy line to improve OCaml error location *)
# 582                "syntax_temp.ml"
let __dypgen_ra_list, __dypgen_main_lexer, __dypgen_aux_lexer =
let dquote (buf:'dypgen__Lex_dquote_Arg_buf) lexbuf =
  match Dyp.lex "dquote" [(Lex_dquote_Arg_buf (buf:'dypgen__Lex_dquote_Arg_buf))] lexbuf with
  | Lex_dquote x -> (x:'dypgen__Lex_dquote)
  | _ -> failwith "lexer `dquote' returned a wrong obj constructor"
in
let quote (buf:'dypgen__Lex_quote_Arg_buf) lexbuf =
  match Dyp.lex "quote" [(Lex_quote_Arg_buf (buf:'dypgen__Lex_quote_Arg_buf))] lexbuf with
  | Lex_quote x -> (x:'dypgen__Lex_quote)
  | _ -> failwith "lexer `quote' returned a wrong obj constructor"
in
[
(("symbol",[Dyp.Regexp (Dyp.RE_Char '<');Dyp.Non_ter_NL ("wident",Dyp.No_priority );Dyp.Non_ter ("dypgen__nested_nt_1",Dyp.No_priority );Dyp.Regexp_NL (Dyp.RE_Char '>')],"core",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1;String ( (
# 141 "syntax.dyp"
                (name:'dypgen__String)
# 600                "syntax_temp.ml"
 as _2));Obj_dypgen__nested_nt_1 ( (
# 141 "syntax.dyp"
                                    (attr:'dypgen__Obj_dypgen__nested_nt_1)
# 604                "syntax_temp.ml"
 as _3)); Lexeme_matched _4] -> Symbol 
# 141 "syntax.dyp"
(
    ( Ast.Symbol.create name ?attr, dyp.symbol_start_pos () ):'dypgen__Symbol)
# 609                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_0",[Dyp.Regexp (Dyp.RE_Char ':');Dyp.Non_ter ("attr",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1;Obj_attr ( (
(_:'dypgen__Obj_attr)
# 617                "syntax_temp.ml"
 as _2))] -> Obj_dypgen__nested_nt_0 
(
(_2):'dypgen__Obj_dypgen__nested_nt_0)
# 621                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_1",[],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [] -> Obj_dypgen__nested_nt_1 
(
(None):'dypgen__Obj_dypgen__nested_nt_1)
# 630                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_1",[Dyp.Non_ter ("dypgen__nested_nt_0",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_dypgen__nested_nt_0 ( (
(_:'dypgen__Obj_dypgen__nested_nt_0)
# 638                "syntax_temp.ml"
 as _1))] -> Obj_dypgen__nested_nt_1 
(
(Some _1):'dypgen__Obj_dypgen__nested_nt_1)
# 642                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("const",[Dyp.Ter "INT"],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_INT  (
# 145 "syntax.dyp"
       (value:(Z.t))
# 651                "syntax_temp.ml"
 as _1)] -> Expr 
# 144 "syntax.dyp"
(
                     ( Ast.Expr.integer value, dyp.symbol_start_pos () ):'dypgen__Expr)
# 656                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("const",[Dyp.Ter "CONST"],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_CONST  (
# 146 "syntax.dyp"
         (value:(Bitvector.t))
# 665                "syntax_temp.ml"
 as _1)] -> Expr 
# 145 "syntax.dyp"
(
                     ( Ast.Expr.constant value, dyp.symbol_start_pos () ):'dypgen__Expr)
# 670                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("range",[Dyp.Regexp (Dyp.RE_Char '{');Dyp.Ter "INT";Dyp.Non_ter ("dypgen__nested_nt_3",Dyp.No_priority );Dyp.Regexp (Dyp.RE_Char '}')],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1;Obj_INT  (
# 149 "syntax.dyp"
           (hi:(Z.t))
# 679                "syntax_temp.ml"
 as _2);Obj_dypgen__nested_nt_3 ( (
# 149 "syntax.dyp"
                             (lo:'dypgen__Obj_dypgen__nested_nt_3)
# 683                "syntax_temp.ml"
 as _3)); Lexeme_matched _4] -> Obj_range 
# 149 "syntax.dyp"
(
    ( { Interval.hi=Z.to_int hi; lo=Z.to_int (Option.value ~default:hi lo) } ):'dypgen__Obj_range)
# 688                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_2",[Dyp.Regexp (Dyp.RE_String "..");Dyp.Ter "INT"],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1;Obj_INT  (
(_:(Z.t))
# 696                "syntax_temp.ml"
 as _2)] -> Obj_dypgen__nested_nt_2 
(
(_2):'dypgen__Obj_dypgen__nested_nt_2)
# 700                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_3",[],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [] -> Obj_dypgen__nested_nt_3 
(
(None):'dypgen__Obj_dypgen__nested_nt_3)
# 709                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_3",[Dyp.Non_ter ("dypgen__nested_nt_2",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_dypgen__nested_nt_2 ( (
(_:'dypgen__Obj_dypgen__nested_nt_2)
# 717                "syntax_temp.ml"
 as _1))] -> Obj_dypgen__nested_nt_3 
(
(Some _1):'dypgen__Obj_dypgen__nested_nt_3)
# 721                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("ident",[Dyp.Regexp (Dyp.RE_Name "sident")],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1] -> String 
(
(_1):'dypgen__String)
# 730                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("ident",[Dyp.Regexp (Dyp.RE_Name "tempvar")],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1] -> String 
(
(_1):'dypgen__String)
# 739                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("var",[Dyp.Non_ter ("ident",Dyp.No_priority );Dyp.Regexp_NL (Dyp.RE_Char '<');Dyp.Ter_NL "INT";Dyp.Regexp_NL (Dyp.RE_Char '>')],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [String ( (
# 157 "syntax.dyp"
         (name:'dypgen__String)
# 748                "syntax_temp.ml"
 as _1)); Lexeme_matched _2;Obj_INT  (
# 157 "syntax.dyp"
                           (size:(Z.t))
# 752                "syntax_temp.ml"
 as _3); Lexeme_matched _4] -> Loc 
# 157 "syntax.dyp"
(
    ( Ast.Loc.var name ~size:(Ast.Size.some (Z.to_int size)),
      dyp.symbol_start_pos () ):'dypgen__Loc)
# 758                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("var",[Dyp.Non_ter ("ident",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [String ( (
# 160 "syntax.dyp"
         (name:'dypgen__String)
# 767                "syntax_temp.ml"
 as _1))] -> Loc 
# 160 "syntax.dyp"
(
    ( Ast.Loc.var name, dyp.symbol_start_pos () ):'dypgen__Loc)
# 772                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("array",[Dyp.Non_ter ("ident",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [String ( (
# 164 "syntax.dyp"
         (var:'dypgen__String)
# 781                "syntax_temp.ml"
 as _1))] -> Obj_array 
# 163 "syntax.dyp"
(
               ( Some var ):'dypgen__Obj_array)
# 786                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("array",[Dyp.Regexp (Dyp.RE_Char '@')],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1] -> Obj_array 
# 164 "syntax.dyp"
(
               ( None ):'dypgen__Obj_array)
# 796                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("endianness",[Dyp.Regexp (Dyp.RE_String "<-")],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1] -> Obj_endianness 
# 167 "syntax.dyp"
(
         ( Machine.LittleEndian ):'dypgen__Obj_endianness)
# 806                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("endianness",[Dyp.Regexp (Dyp.RE_String "->")],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1] -> Obj_endianness 
# 168 "syntax.dyp"
(
         ( Machine.BigEndian ):'dypgen__Obj_endianness)
# 816                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("load",[Dyp.Non_ter ("array",Dyp.No_priority );Dyp.Regexp_NL (Dyp.RE_Char '[');Dyp.Non_ter ("expr",Dyp.No_priority );Dyp.Non_ter ("dypgen__nested_nt_5",Dyp.No_priority );Dyp.Non_ter ("dypgen__nested_nt_7",Dyp.No_priority );Dyp.Regexp (Dyp.RE_Char ']')],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_array ( (
# 172 "syntax.dyp"
         (array:'dypgen__Obj_array)
# 825                "syntax_temp.ml"
 as _1)); Lexeme_matched _2;Expr ( (
# 172 "syntax.dyp"
                           (addr:'dypgen__Expr)
# 829                "syntax_temp.ml"
 as _3));Obj_dypgen__nested_nt_5 ( (
# 172 "syntax.dyp"
                                                     (endianness:'dypgen__Obj_dypgen__nested_nt_5)
# 833                "syntax_temp.ml"
 as _4));Obj_dypgen__nested_nt_7 ( (
# 173 "syntax.dyp"
                                              (size:'dypgen__Obj_dypgen__nested_nt_7)
# 837                "syntax_temp.ml"
 as _5)); Lexeme_matched _6] -> Loc 
# 173 "syntax.dyp"
(
    ( Ast.Loc.load ?array (Option.fold ~none:1 ~some:Z.to_int size)
      ?endianness addr, dyp.symbol_start_pos () ):'dypgen__Loc)
# 843                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_4",[Dyp.Regexp (Dyp.RE_Char ',');Dyp.Non_ter ("endianness",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1;Obj_endianness ( (
(_:'dypgen__Obj_endianness)
# 851                "syntax_temp.ml"
 as _2))] -> Obj_dypgen__nested_nt_4 
(
(_2):'dypgen__Obj_dypgen__nested_nt_4)
# 855                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_5",[],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [] -> Obj_dypgen__nested_nt_5 
(
(None):'dypgen__Obj_dypgen__nested_nt_5)
# 864                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_5",[Dyp.Non_ter ("dypgen__nested_nt_4",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_dypgen__nested_nt_4 ( (
(_:'dypgen__Obj_dypgen__nested_nt_4)
# 872                "syntax_temp.ml"
 as _1))] -> Obj_dypgen__nested_nt_5 
(
(Some _1):'dypgen__Obj_dypgen__nested_nt_5)
# 876                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_6",[Dyp.Regexp (Dyp.RE_Char ',');Dyp.Ter "INT"],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1;Obj_INT  (
(_:(Z.t))
# 884                "syntax_temp.ml"
 as _2)] -> Obj_dypgen__nested_nt_6 
(
(_2):'dypgen__Obj_dypgen__nested_nt_6)
# 888                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_7",[],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [] -> Obj_dypgen__nested_nt_7 
(
(None):'dypgen__Obj_dypgen__nested_nt_7)
# 897                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_7",[Dyp.Non_ter ("dypgen__nested_nt_6",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_dypgen__nested_nt_6 ( (
(_:'dypgen__Obj_dypgen__nested_nt_6)
# 905                "syntax_temp.ml"
 as _1))] -> Obj_dypgen__nested_nt_7 
(
(Some _1):'dypgen__Obj_dypgen__nested_nt_7)
# 909                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("loc",[Dyp.Non_ter ("var",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Loc ( (
# 178 "syntax.dyp"
       (var:'dypgen__Loc)
# 918                "syntax_temp.ml"
 as _1))] -> Loc 
# 177 "syntax.dyp"
(
               ( var ):'dypgen__Loc)
# 923                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("loc",[Dyp.Non_ter ("load",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Loc ( (
# 179 "syntax.dyp"
        (load:'dypgen__Loc)
# 932                "syntax_temp.ml"
 as _1))] -> Loc 
# 178 "syntax.dyp"
(
               ( load ):'dypgen__Loc)
# 937                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("loc",[Dyp.Non_ter ("loc",Dyp.No_priority );Dyp.Non_ter_NL ("range",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Loc ( (
# 180 "syntax.dyp"
       (loc:'dypgen__Loc)
# 946                "syntax_temp.ml"
 as _1));Obj_range ( (
# 180 "syntax.dyp"
                    (r:'dypgen__Obj_range)
# 950                "syntax_temp.ml"
 as _2))] -> Loc 
# 180 "syntax.dyp"
(
    ( let { Interval.hi; lo } = r in
      Ast.Loc.restrict ~hi ~lo loc, dyp.symbol_start_pos () ):'dypgen__Loc)
# 956                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("wident",[Dyp.Regexp (Dyp.RE_Name "wident")],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1] -> String 
(
(_1):'dypgen__String)
# 965                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("attr",[Dyp.Ter "VALUE"],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ _1] -> Obj_attr 
# 186 "syntax.dyp"
(
          ( Dba.Var.Tag.Value ):'dypgen__Obj_attr)
# 975                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("attr",[Dyp.Ter "SIZE"],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ _1] -> Obj_attr 
# 187 "syntax.dyp"
(
          ( Dba.Var.Tag.Size ):'dypgen__Obj_attr)
# 985                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("attr",[Dyp.Ter "LAST"],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ _1] -> Obj_attr 
# 188 "syntax.dyp"
(
          ( Dba.Var.Tag.Last ):'dypgen__Obj_attr)
# 995                "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Regexp (Dyp.RE_Char '(');Dyp.Non_ter ("expr",Dyp.No_priority );Dyp.Regexp (Dyp.RE_Char ')')],"core",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1;Expr ( (
# 192 "syntax.dyp"
            (x:'dypgen__Expr)
# 1004               "syntax_temp.ml"
 as _2)); Lexeme_matched _3] -> Expr 
# 192 "syntax.dyp"
(
    ( x ):'dypgen__Expr)
# 1009               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("var",Dyp.No_priority )],"core",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Loc ( (
# 194 "syntax.dyp"
       (var:'dypgen__Loc)
# 1018               "syntax_temp.ml"
 as _1))] -> Expr 
# 194 "syntax.dyp"
(
    ( Ast.Expr.loc var, dyp.symbol_start_pos () ):'dypgen__Expr)
# 1023               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("load",Dyp.No_priority )],"core",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Loc ( (
# 196 "syntax.dyp"
        (load:'dypgen__Loc)
# 1032               "syntax_temp.ml"
 as _1))] -> Expr 
# 196 "syntax.dyp"
(
    ( Ast.Expr.loc load,
      dyp.symbol_start_pos () ):'dypgen__Expr)
# 1038               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("const",Dyp.No_priority )],"core",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Expr ( (
# 199 "syntax.dyp"
         (x:'dypgen__Expr)
# 1047               "syntax_temp.ml"
 as _1))] -> Expr 
# 199 "syntax.dyp"
(
    ( x ):'dypgen__Expr)
# 1052               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("symbol",Dyp.No_priority )],"core",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Symbol ( (
# 201 "syntax.dyp"
          (sym:'dypgen__Symbol)
# 1061               "syntax_temp.ml"
 as _1))] -> Expr 
# 201 "syntax.dyp"
(
    ( Ast.Expr.symbol sym, dyp.symbol_start_pos () ):'dypgen__Expr)
# 1066               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("expr",Dyp.Lesseq_priority "core");Dyp.Non_ter_NL ("range",Dyp.No_priority )],"core",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Expr ( (
# 203 "syntax.dyp"
                 (x:'dypgen__Expr)
# 1075               "syntax_temp.ml"
 as _1));Obj_range ( (
# 203 "syntax.dyp"
                            (r:'dypgen__Obj_range)
# 1079               "syntax_temp.ml"
 as _2))] -> Expr 
# 203 "syntax.dyp"
(
    ( let { Interval.hi; lo } = r in
      Ast.Expr.restrict ~hi ~lo x, dyp.symbol_start_pos () ):'dypgen__Expr)
# 1085               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("ext",Dyp.No_priority );Dyp.Non_ter ("expr",Dyp.Less_priority "ext")],"ext",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Unop ( (
# 206 "syntax.dyp"
       (op:'dypgen__Unop)
# 1094               "syntax_temp.ml"
 as _1));Expr ( (
# 206 "syntax.dyp"
                       (x:'dypgen__Expr)
# 1098               "syntax_temp.ml"
 as _2))] -> Expr 
# 206 "syntax.dyp"
(
    ( op x, dyp.symbol_start_pos () ):'dypgen__Expr)
# 1103               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("unop",Dyp.No_priority );Dyp.Non_ter ("expr",Dyp.Lesseq_priority "unary")],"unary",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Unop ( (
# 208 "syntax.dyp"
        (op:'dypgen__Unop)
# 1112               "syntax_temp.ml"
 as _1));Expr ( (
# 208 "syntax.dyp"
                           (x:'dypgen__Expr)
# 1116               "syntax_temp.ml"
 as _2))] -> Expr 
# 208 "syntax.dyp"
(
    ( op x, dyp.symbol_start_pos () ):'dypgen__Expr)
# 1121               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("expr",Dyp.Lesseq_priority "arith0");Dyp.Non_ter ("accept_newline",Dyp.No_priority );Dyp.Non_ter ("arith0",Dyp.No_priority );Dyp.Non_ter ("expr",Dyp.Less_priority "arith0")],"arith0",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Expr ( (
# 210 "syntax.dyp"
                   (x:'dypgen__Expr)
# 1130               "syntax_temp.ml"
 as _1));Obj_accept_newline ( (
(_:'dypgen__Obj_accept_newline)
# 1133               "syntax_temp.ml"
 as _2));Binop ( (
# 210 "syntax.dyp"
                                            (op:'dypgen__Binop)
# 1137               "syntax_temp.ml"
 as _3));Expr ( (
# 210 "syntax.dyp"
                                                               (y:'dypgen__Expr)
# 1141               "syntax_temp.ml"
 as _4))] -> Expr 
# 210 "syntax.dyp"
(
    ( op x y, dyp.symbol_start_pos () ):'dypgen__Expr)
# 1146               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("expr",Dyp.Lesseq_priority "bitwize0");Dyp.Non_ter ("accept_newline",Dyp.No_priority );Dyp.Non_ter ("bitwize0",Dyp.No_priority );Dyp.Non_ter ("expr",Dyp.Less_priority "bitwize0")],"bitwize0",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Expr ( (
# 212 "syntax.dyp"
                     (x:'dypgen__Expr)
# 1155               "syntax_temp.ml"
 as _1));Obj_accept_newline ( (
(_:'dypgen__Obj_accept_newline)
# 1158               "syntax_temp.ml"
 as _2));Binop ( (
# 212 "syntax.dyp"
                                                (op:'dypgen__Binop)
# 1162               "syntax_temp.ml"
 as _3));Expr ( (
# 212 "syntax.dyp"
                                                                     (y:'dypgen__Expr)
# 1166               "syntax_temp.ml"
 as _4))] -> Expr 
# 212 "syntax.dyp"
(
    ( op x y, dyp.symbol_start_pos () ):'dypgen__Expr)
# 1171               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("expr",Dyp.Lesseq_priority "arith1");Dyp.Non_ter ("accept_newline",Dyp.No_priority );Dyp.Non_ter ("arith1",Dyp.No_priority );Dyp.Non_ter ("expr",Dyp.Less_priority "arith1")],"arith1",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Expr ( (
# 214 "syntax.dyp"
                   (x:'dypgen__Expr)
# 1180               "syntax_temp.ml"
 as _1));Obj_accept_newline ( (
(_:'dypgen__Obj_accept_newline)
# 1183               "syntax_temp.ml"
 as _2));Binop ( (
# 214 "syntax.dyp"
                                            (op:'dypgen__Binop)
# 1187               "syntax_temp.ml"
 as _3));Expr ( (
# 214 "syntax.dyp"
                                                               (y:'dypgen__Expr)
# 1191               "syntax_temp.ml"
 as _4))] -> Expr 
# 214 "syntax.dyp"
(
    ( op x y, dyp.symbol_start_pos () ):'dypgen__Expr)
# 1196               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("expr",Dyp.Lesseq_priority "bitwize1");Dyp.Non_ter ("accept_newline",Dyp.No_priority );Dyp.Non_ter ("bitwize1",Dyp.No_priority );Dyp.Non_ter ("expr",Dyp.Less_priority "bitwize1")],"bitwize1",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Expr ( (
# 216 "syntax.dyp"
                     (x:'dypgen__Expr)
# 1205               "syntax_temp.ml"
 as _1));Obj_accept_newline ( (
(_:'dypgen__Obj_accept_newline)
# 1208               "syntax_temp.ml"
 as _2));Binop ( (
# 216 "syntax.dyp"
                                                (op:'dypgen__Binop)
# 1212               "syntax_temp.ml"
 as _3));Expr ( (
# 216 "syntax.dyp"
                                                                     (y:'dypgen__Expr)
# 1216               "syntax_temp.ml"
 as _4))] -> Expr 
# 216 "syntax.dyp"
(
    ( op x y, dyp.symbol_start_pos () ):'dypgen__Expr)
# 1221               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("expr",Dyp.Less_priority "concat");Dyp.Non_ter ("accept_newline",Dyp.No_priority );Dyp.Regexp (Dyp.RE_String "::");Dyp.Non_ter ("expr",Dyp.Lesseq_priority "concat")],"concat",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Expr ( (
# 218 "syntax.dyp"
                  (x:'dypgen__Expr)
# 1230               "syntax_temp.ml"
 as _1));Obj_accept_newline ( (
(_:'dypgen__Obj_accept_newline)
# 1233               "syntax_temp.ml"
 as _2)); Lexeme_matched _3;Expr ( (
# 218 "syntax.dyp"
                                                         (y:'dypgen__Expr)
# 1237               "syntax_temp.ml"
 as _4))] -> Expr 
# 218 "syntax.dyp"
(
    ( Ast.Expr.append x y, dyp.symbol_start_pos () ):'dypgen__Expr)
# 1242               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("expr",Dyp.Less_priority "diff");Dyp.Non_ter ("accept_newline",Dyp.No_priority );Dyp.Regexp (Dyp.RE_String "<>");Dyp.Non_ter ("expr",Dyp.Less_priority "diff")],"diff",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Expr ( (
# 220 "syntax.dyp"
                (x:'dypgen__Expr)
# 1251               "syntax_temp.ml"
 as _1));Obj_accept_newline ( (
(_:'dypgen__Obj_accept_newline)
# 1254               "syntax_temp.ml"
 as _2)); Lexeme_matched _3;Expr ( (
# 220 "syntax.dyp"
                                                    (y:'dypgen__Expr)
# 1258               "syntax_temp.ml"
 as _4))] -> Expr 
# 220 "syntax.dyp"
(
    ( Ast.Expr.diff x y, dyp.symbol_start_pos () ):'dypgen__Expr)
# 1263               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("expr",Dyp.Lesseq_priority "diff");Dyp.Non_ter ("dypgen__nested_nt_9",Dyp.No_priority )],"ineq",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Expr ( (
# 222 "syntax.dyp"
                 (x:'dypgen__Expr)
# 1272               "syntax_temp.ml"
 as _1));Obj_dypgen__nested_nt_9 ( (
# 223 "syntax.dyp"
                                                              (y:'dypgen__Obj_dypgen__nested_nt_9)
# 1276               "syntax_temp.ml"
 as _2))] -> Expr 
# 223 "syntax.dyp"
(
    ( fst (fst (List.fold_left
           (fun (e, a) (op, b) ->
             (Ast.Expr.logand e (op a b, Lexing.dummy_pos),
              Lexing.dummy_pos), b)
           ((Ast.Expr.one, Lexing.dummy_pos), x) y)),
            dyp.symbol_start_pos () ):'dypgen__Expr)
# 1286               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("expr",Dyp.Lesseq_priority "logand");Dyp.Non_ter ("accept_newline",Dyp.No_priority );Dyp.Regexp (Dyp.RE_String "&&");Dyp.Non_ter ("expr",Dyp.Less_priority "logand")],"logand",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Expr ( (
# 230 "syntax.dyp"
                   (x:'dypgen__Expr)
# 1295               "syntax_temp.ml"
 as _1));Obj_accept_newline ( (
(_:'dypgen__Obj_accept_newline)
# 1298               "syntax_temp.ml"
 as _2)); Lexeme_matched _3;Expr ( (
# 230 "syntax.dyp"
                                                         (y:'dypgen__Expr)
# 1302               "syntax_temp.ml"
 as _4))] -> Expr 
# 230 "syntax.dyp"
(
    ( Ast.Expr.logand x y, dyp.symbol_start_pos () ):'dypgen__Expr)
# 1307               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("expr",Dyp.Lesseq_priority "logor");Dyp.Non_ter ("accept_newline",Dyp.No_priority );Dyp.Regexp (Dyp.RE_String "||");Dyp.Non_ter ("expr",Dyp.Less_priority "logor")],"logor",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Expr ( (
# 232 "syntax.dyp"
                  (x:'dypgen__Expr)
# 1316               "syntax_temp.ml"
 as _1));Obj_accept_newline ( (
(_:'dypgen__Obj_accept_newline)
# 1319               "syntax_temp.ml"
 as _2)); Lexeme_matched _3;Expr ( (
# 232 "syntax.dyp"
                                                       (y:'dypgen__Expr)
# 1323               "syntax_temp.ml"
 as _4))] -> Expr 
# 232 "syntax.dyp"
(
    ( Ast.Expr.logor x y, dyp.symbol_start_pos () ):'dypgen__Expr)
# 1328               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("expr",Dyp.Lesseq_priority "logor");Dyp.Non_ter ("accept_newline",Dyp.No_priority );Dyp.Regexp (Dyp.RE_Char '?');Dyp.Non_ter ("expr",Dyp.Lesseq_priority "logor");Dyp.Regexp (Dyp.RE_Char ':');Dyp.Non_ter ("expr",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Expr ( (
# 234 "syntax.dyp"
                  (t:'dypgen__Expr)
# 1337               "syntax_temp.ml"
 as _1));Obj_accept_newline ( (
(_:'dypgen__Obj_accept_newline)
# 1340               "syntax_temp.ml"
 as _2)); Lexeme_matched _3;Expr ( (
# 234 "syntax.dyp"
                                                       (x:'dypgen__Expr)
# 1344               "syntax_temp.ml"
 as _4)); Lexeme_matched _5;Expr ( (
# 234 "syntax.dyp"
                                                                   (y:'dypgen__Expr)
# 1348               "syntax_temp.ml"
 as _6))] -> Expr 
# 234 "syntax.dyp"
(
    ( Ast.Expr.ite t x y, dyp.symbol_start_pos () ):'dypgen__Expr)
# 1353               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Ter "CASE";Dyp.Non_ter ("expr",Dyp.Lesseq_priority "logor");Dyp.Ter "IS";Dyp.Non_ter ("dypgen__nested_nt_12",Dyp.No_priority );Dyp.Regexp (Dyp.RE_Char '_');Dyp.Regexp (Dyp.RE_Char ':');Dyp.Non_ter ("expr",Dyp.Lesseq_priority "logor")],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ _1;Expr ( (
# 236 "syntax.dyp"
                       (r:'dypgen__Expr)
# 1362               "syntax_temp.ml"
 as _2)); _3;Obj_dypgen__nested_nt_12 ( (
# 237 "syntax.dyp"
                                                       (cases:'dypgen__Obj_dypgen__nested_nt_12)
# 1366               "syntax_temp.ml"
 as _4)); Lexeme_matched _5; Lexeme_matched _6;Expr ( (
# 238 "syntax.dyp"
                          (default:'dypgen__Expr)
# 1370               "syntax_temp.ml"
 as _7))] -> Expr 
# 238 "syntax.dyp"
(
    ( fst (List.fold_left
        (fun e (k, c) ->
          Ast.Expr.ite (Ast.Expr.equal r k, Lexing.dummy_pos) c e,
          Lexing.dummy_pos) default
         (List.rev cases)), dyp.symbol_start_pos () ):'dypgen__Expr)
# 1379               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_8",[Dyp.Non_ter ("accept_newline",Dyp.No_priority );Dyp.Non_ter ("cmpop",Dyp.No_priority );Dyp.Non_ter ("expr",Dyp.Lesseq_priority "diff")],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_accept_newline ( (
(_:'dypgen__Obj_accept_newline)
# 1387               "syntax_temp.ml"
 as _1));Binop ( (
# 223 "syntax.dyp"
                          (op:'dypgen__Binop)
# 1391               "syntax_temp.ml"
 as _2));Expr ( (
# 223 "syntax.dyp"
                                            (y:'dypgen__Expr)
# 1395               "syntax_temp.ml"
 as _3))] -> Obj_dypgen__nested_nt_8 
# 222 "syntax.dyp"
(
                                                ( (op, y) ):'dypgen__Obj_dypgen__nested_nt_8)
# 1400               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_9",[Dyp.Non_ter ("dypgen__nested_nt_10",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_dypgen__nested_nt_10 ( (
(_:'dypgen__Obj_dypgen__nested_nt_10)
# 1408               "syntax_temp.ml"
 as _1))] -> Obj_dypgen__nested_nt_9 
(
(List.rev _1):'dypgen__Obj_dypgen__nested_nt_9)
# 1412               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_10",[Dyp.Non_ter ("dypgen__nested_nt_10",Dyp.No_priority );Dyp.Non_ter ("dypgen__nested_nt_8",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_dypgen__nested_nt_10 ( (
(_:'dypgen__Obj_dypgen__nested_nt_10)
# 1420               "syntax_temp.ml"
 as _1));Obj_dypgen__nested_nt_8 ( (
(_:'dypgen__Obj_dypgen__nested_nt_8)
# 1423               "syntax_temp.ml"
 as _2))] -> Obj_dypgen__nested_nt_10 
(
(_2::_1):'dypgen__Obj_dypgen__nested_nt_10)
# 1427               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_10",[Dyp.Non_ter ("dypgen__nested_nt_8",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_dypgen__nested_nt_8 ( (
(_:'dypgen__Obj_dypgen__nested_nt_8)
# 1435               "syntax_temp.ml"
 as _1))] -> Obj_dypgen__nested_nt_10 
(
([_1]):'dypgen__Obj_dypgen__nested_nt_10)
# 1439               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_11",[Dyp.Non_ter ("const",Dyp.No_priority );Dyp.Regexp (Dyp.RE_Char ':');Dyp.Non_ter ("expr",Dyp.No_priority );Dyp.Non_ter ("accept_newline",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Expr ( (
# 237 "syntax.dyp"
           (x:'dypgen__Expr)
# 1448               "syntax_temp.ml"
 as _1)); Lexeme_matched _2;Expr ( (
# 237 "syntax.dyp"
                       (y:'dypgen__Expr)
# 1452               "syntax_temp.ml"
 as _3));Obj_accept_newline ( (
(_:'dypgen__Obj_accept_newline)
# 1455               "syntax_temp.ml"
 as _4))] -> Obj_dypgen__nested_nt_11 
# 236 "syntax.dyp"
(
                                          ( (x, y) ):'dypgen__Obj_dypgen__nested_nt_11)
# 1460               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_12",[Dyp.Non_ter ("dypgen__nested_nt_13",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_dypgen__nested_nt_13 ( (
(_:'dypgen__Obj_dypgen__nested_nt_13)
# 1468               "syntax_temp.ml"
 as _1))] -> Obj_dypgen__nested_nt_12 
(
(List.rev _1):'dypgen__Obj_dypgen__nested_nt_12)
# 1472               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_13",[Dyp.Non_ter ("dypgen__nested_nt_13",Dyp.No_priority );Dyp.Non_ter ("dypgen__nested_nt_11",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_dypgen__nested_nt_13 ( (
(_:'dypgen__Obj_dypgen__nested_nt_13)
# 1480               "syntax_temp.ml"
 as _1));Obj_dypgen__nested_nt_11 ( (
(_:'dypgen__Obj_dypgen__nested_nt_11)
# 1483               "syntax_temp.ml"
 as _2))] -> Obj_dypgen__nested_nt_13 
(
(_2::_1):'dypgen__Obj_dypgen__nested_nt_13)
# 1487               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_13",[],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [] -> Obj_dypgen__nested_nt_13 
(
([]):'dypgen__Obj_dypgen__nested_nt_13)
# 1496               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("ext",[Dyp.Ter "ZEXT"],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_ZEXT  (
# 246 "syntax.dyp"
        (n:(int))
# 1505               "syntax_temp.ml"
 as _1)] -> Unop 
# 245 "syntax.dyp"
(
            ( Ast.Expr.uext n ):'dypgen__Unop)
# 1510               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("ext",[Dyp.Ter "SEXT"],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_SEXT  (
# 247 "syntax.dyp"
        (n:(int))
# 1519               "syntax_temp.ml"
 as _1)] -> Unop 
# 246 "syntax.dyp"
(
            ( Ast.Expr.sext n ):'dypgen__Unop)
# 1524               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("unop",[Dyp.Regexp (Dyp.RE_Char '~')],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1] -> Unop 
# 249 "syntax.dyp"
(
               ( Ast.Expr.lognot ):'dypgen__Unop)
# 1534               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("unop",[Dyp.Regexp (Dyp.RE_Char '!')],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1] -> Unop 
# 250 "syntax.dyp"
(
               ( Ast.Expr.lognot ):'dypgen__Unop)
# 1544               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("unop",[Dyp.Regexp (Dyp.RE_Char '-')],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1] -> Unop 
# 251 "syntax.dyp"
(
               ( Ast.Expr.neg ):'dypgen__Unop)
# 1554               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("arith0",[Dyp.Regexp (Dyp.RE_Char '*')],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1] -> Binop 
# 254 "syntax.dyp"
(
               ( Ast.Expr.mul ):'dypgen__Binop)
# 1564               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("arith0",[Dyp.Regexp (Dyp.RE_Char '/');Dyp.Regexp (Dyp.RE_Option (Dyp.RE_Char 'u'))],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1; Lexeme_matched _2] -> Binop 
# 255 "syntax.dyp"
(
               ( Ast.Expr.udiv ):'dypgen__Binop)
# 1574               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("arith0",[Dyp.Regexp (Dyp.RE_String "/s")],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1] -> Binop 
# 256 "syntax.dyp"
(
               ( Ast.Expr.sdiv ):'dypgen__Binop)
# 1584               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("arith0",[Dyp.Regexp (Dyp.RE_Char '%');Dyp.Regexp (Dyp.RE_Option (Dyp.RE_Char 'u'))],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1; Lexeme_matched _2] -> Binop 
# 257 "syntax.dyp"
(
               ( Ast.Expr.umod ):'dypgen__Binop)
# 1594               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("arith0",[Dyp.Regexp (Dyp.RE_String "%s")],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1] -> Binop 
# 258 "syntax.dyp"
(
               ( Ast.Expr.smod ):'dypgen__Binop)
# 1604               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("bitwize0",[Dyp.Regexp (Dyp.RE_Char '&')],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1] -> Binop 
# 261 "syntax.dyp"
(
               ( Ast.Expr.logand ):'dypgen__Binop)
# 1614               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("bitwize0",[Dyp.Regexp (Dyp.RE_Char '|')],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1] -> Binop 
# 262 "syntax.dyp"
(
               ( Ast.Expr.logor ):'dypgen__Binop)
# 1624               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("bitwize0",[Dyp.Regexp (Dyp.RE_Char '^')],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1] -> Binop 
# 263 "syntax.dyp"
(
               ( Ast.Expr.logxor ):'dypgen__Binop)
# 1634               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("arith1",[Dyp.Regexp (Dyp.RE_Char '+')],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1] -> Binop 
# 266 "syntax.dyp"
(
               ( Ast.Expr.add ):'dypgen__Binop)
# 1644               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("arith1",[Dyp.Regexp (Dyp.RE_Char '-')],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1] -> Binop 
# 267 "syntax.dyp"
(
               ( Ast.Expr.sub ):'dypgen__Binop)
# 1654               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("bitwize1",[Dyp.Ter "LSL"],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ _1] -> Binop 
# 270 "syntax.dyp"
(
               ( Ast.Expr.shift_left ):'dypgen__Binop)
# 1664               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("bitwize1",[Dyp.Ter "LSR"],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ _1] -> Binop 
# 271 "syntax.dyp"
(
               ( Ast.Expr.shift_right ):'dypgen__Binop)
# 1674               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("bitwize1",[Dyp.Ter "ASR"],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ _1] -> Binop 
# 272 "syntax.dyp"
(
               ( Ast.Expr.shift_right_signed ):'dypgen__Binop)
# 1684               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("bitwize1",[Dyp.Ter "ROL"],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ _1] -> Binop 
# 273 "syntax.dyp"
(
               ( Ast.Expr.rotate_left ):'dypgen__Binop)
# 1694               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("bitwize1",[Dyp.Ter "ROR"],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ _1] -> Binop 
# 274 "syntax.dyp"
(
               ( Ast.Expr.rotate_right ):'dypgen__Binop)
# 1704               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("cmpop",[Dyp.Regexp (Dyp.RE_Char '=')],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1] -> Binop 
# 277 "syntax.dyp"
(
               ( Ast.Expr.equal ):'dypgen__Binop)
# 1714               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("cmpop",[Dyp.Regexp (Dyp.RE_String ">=");Dyp.Regexp (Dyp.RE_Option (Dyp.RE_Char 'u'))],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1; Lexeme_matched _2] -> Binop 
# 278 "syntax.dyp"
(
               ( Ast.Expr.uge ):'dypgen__Binop)
# 1724               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("cmpop",[Dyp.Regexp (Dyp.RE_Char '>');Dyp.Regexp (Dyp.RE_Option (Dyp.RE_Char 'u'))],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1; Lexeme_matched _2] -> Binop 
# 279 "syntax.dyp"
(
               ( Ast.Expr.ugt ):'dypgen__Binop)
# 1734               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("cmpop",[Dyp.Regexp (Dyp.RE_String "<=");Dyp.Regexp (Dyp.RE_Option (Dyp.RE_Char 'u'))],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1; Lexeme_matched _2] -> Binop 
# 280 "syntax.dyp"
(
               ( Ast.Expr.ule ):'dypgen__Binop)
# 1744               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("cmpop",[Dyp.Regexp (Dyp.RE_Char '<');Dyp.Regexp (Dyp.RE_Option (Dyp.RE_Char 'u'))],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1; Lexeme_matched _2] -> Binop 
# 281 "syntax.dyp"
(
               ( Ast.Expr.ult ):'dypgen__Binop)
# 1754               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("cmpop",[Dyp.Regexp (Dyp.RE_String ">=s")],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1] -> Binop 
# 282 "syntax.dyp"
(
               ( Ast.Expr.sge ):'dypgen__Binop)
# 1764               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("cmpop",[Dyp.Regexp (Dyp.RE_String ">s")],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1] -> Binop 
# 283 "syntax.dyp"
(
               ( Ast.Expr.sgt ):'dypgen__Binop)
# 1774               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("cmpop",[Dyp.Regexp (Dyp.RE_String "<=s")],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1] -> Binop 
# 284 "syntax.dyp"
(
               ( Ast.Expr.sle ):'dypgen__Binop)
# 1784               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("cmpop",[Dyp.Regexp (Dyp.RE_String "<s")],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1] -> Binop 
# 285 "syntax.dyp"
(
               ( Ast.Expr.slt ):'dypgen__Binop)
# 1794               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("assignment",[Dyp.Non_ter ("loc",Dyp.No_priority );Dyp.Regexp (Dyp.RE_String ":=");Dyp.Non_ter ("expr",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Loc ( (
# 289 "syntax.dyp"
       (lval:'dypgen__Loc)
# 1803               "syntax_temp.ml"
 as _1)); Lexeme_matched _2;Expr ( (
# 289 "syntax.dyp"
                       (rval:'dypgen__Expr)
# 1807               "syntax_temp.ml"
 as _3))] -> Instr 
# 289 "syntax.dyp"
(
    ( Ast.Instr.assign lval rval ):'dypgen__Instr)
# 1812               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("assignment",[Dyp.Non_ter ("loc",Dyp.No_priority );Dyp.Regexp (Dyp.RE_String ":=");Dyp.Ter "UNDEF"],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Loc ( (
# 291 "syntax.dyp"
       (lval:'dypgen__Loc)
# 1821               "syntax_temp.ml"
 as _1)); Lexeme_matched _2; _3] -> Instr 
# 291 "syntax.dyp"
(
    ( Ast.Instr.undef lval ):'dypgen__Instr)
# 1826               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("assignment",[Dyp.Non_ter ("loc",Dyp.No_priority );Dyp.Regexp (Dyp.RE_String ":=");Dyp.Ter "NONDET"],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Loc ( (
# 293 "syntax.dyp"
       (lval:'dypgen__Loc)
# 1835               "syntax_temp.ml"
 as _1)); Lexeme_matched _2; _3] -> Instr 
# 293 "syntax.dyp"
(
    ( Ast.Instr.nondet lval ):'dypgen__Instr)
# 1840               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("fallthrough",[Dyp.Non_ter ("assignment",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Instr ( (
# 297 "syntax.dyp"
              (x:'dypgen__Instr)
# 1849               "syntax_temp.ml"
 as _1))] -> Instr 
# 296 "syntax.dyp"
(
                   ( x ):'dypgen__Instr)
# 1854               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("fallthrough",[Dyp.Ter "ASSERT";Dyp.Non_ter ("expr",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ _1;Expr ( (
# 298 "syntax.dyp"
               (x:'dypgen__Expr)
# 1863               "syntax_temp.ml"
 as _2))] -> Instr 
# 297 "syntax.dyp"
(
                   ( Ast.Instr.dynamic_assert x ):'dypgen__Instr)
# 1868               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("fallthrough",[Dyp.Ter "ASSUME";Dyp.Non_ter ("expr",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ _1;Expr ( (
# 299 "syntax.dyp"
               (x:'dypgen__Expr)
# 1877               "syntax_temp.ml"
 as _2))] -> Instr 
# 298 "syntax.dyp"
(
                   ( Ast.Instr.assume x ):'dypgen__Instr)
# 1882               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("terminator",[Dyp.Ter "JUMP";Dyp.Ter "AT";Dyp.Non_ter ("expr",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ _1; _2;Expr ( (
# 302 "syntax.dyp"
                (x:'dypgen__Expr)
# 1891               "syntax_temp.ml"
 as _3))] -> Instr 
# 301 "syntax.dyp"
(
                    ( Ast.Instr.dynamic_jump x ):'dypgen__Instr)
# 1896               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("terminator",[Dyp.Ter "HALT"],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ _1] -> Instr 
# 302 "syntax.dyp"
(
                    ( Ast.Instr.halt ):'dypgen__Instr)
# 1906               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("instr_or_block",[Dyp.Non_ter ("instr",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Stmt ( (
(_:'dypgen__Stmt)
# 1914               "syntax_temp.ml"
 as _1))] -> Stmt 
(
(_1):'dypgen__Stmt)
# 1918               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("instr_or_block",[Dyp.Non_ter ("block",Dyp.No_priority );Dyp.Ter "END"],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Stmt ( (
# 307 "syntax.dyp"
         (block:'dypgen__Stmt)
# 1927               "syntax_temp.ml"
 as _1)); _2] -> Stmt 
# 306 "syntax.dyp"
(
                     ( block ):'dypgen__Stmt)
# 1932               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("instr",[Dyp.Non_ter ("loc",Dyp.No_priority );Dyp.Regexp (Dyp.RE_String ":=");Dyp.Non_ter ("expr",Dyp.No_priority );Dyp.Non_ter ("accept_newline",Dyp.No_priority );Dyp.Ter "AS";Dyp.Non_ter ("ident",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Loc ( (
# 310 "syntax.dyp"
       (lval:'dypgen__Loc)
# 1941               "syntax_temp.ml"
 as _1)); Lexeme_matched _2;Expr ( (
# 310 "syntax.dyp"
                       (rval:'dypgen__Expr)
# 1945               "syntax_temp.ml"
 as _3));Obj_accept_newline ( (
(_:'dypgen__Obj_accept_newline)
# 1948               "syntax_temp.ml"
 as _4)); _5;String ( (
# 310 "syntax.dyp"
                                                     (name:'dypgen__String)
# 1952               "syntax_temp.ml"
 as _6))] -> Stmt 
# 310 "syntax.dyp"
(
    ( let var =
        Ast.Loc.var name ~size:(Ast.Size.sizeof lval),
        Lexing.dummy_pos in
      [ Ast.Instr.assign var rval;
        Ast.Instr.assign lval (Ast.Expr.loc var, Lexing.dummy_pos) ] ):'dypgen__Stmt)
# 1961               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("instr",[Dyp.Non_ter ("loc",Dyp.No_priority );Dyp.Regexp (Dyp.RE_String ":=");Dyp.Ter "NONDET";Dyp.Non_ter ("accept_newline",Dyp.No_priority );Dyp.Ter "AS";Dyp.Non_ter ("ident",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Loc ( (
# 316 "syntax.dyp"
       (lval:'dypgen__Loc)
# 1970               "syntax_temp.ml"
 as _1)); Lexeme_matched _2; _3;Obj_accept_newline ( (
(_:'dypgen__Obj_accept_newline)
# 1973               "syntax_temp.ml"
 as _4)); _5;String ( (
# 316 "syntax.dyp"
                                                 (name:'dypgen__String)
# 1977               "syntax_temp.ml"
 as _6))] -> Stmt 
# 316 "syntax.dyp"
(
    ( let var = Ast.Loc.var name ~size:(Ast.Size.sizeof lval),
                Lexing.dummy_pos in
      [ Ast.Instr.nondet var;
        Ast.Instr.assign lval (Ast.Expr.loc var, Lexing.dummy_pos) ] ):'dypgen__Stmt)
# 1985               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("instr",[Dyp.Non_ter ("fallthrough",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Instr ( (
# 321 "syntax.dyp"
               (instr:'dypgen__Instr)
# 1994               "syntax_temp.ml"
 as _1))] -> Stmt 
# 321 "syntax.dyp"
(
    ( [ instr ] ):'dypgen__Stmt)
# 1999               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("block",[Dyp.Ter "IF";Dyp.Non_ter ("expr",Dyp.No_priority );Dyp.Ter "THEN";Dyp.Non_ter ("stmts",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ _1;Expr ( (
# 325 "syntax.dyp"
           (test:'dypgen__Expr)
# 2008               "syntax_temp.ml"
 as _2)); _3;Stmt ( (
# 325 "syntax.dyp"
                            (stmts:'dypgen__Stmt)
# 2012               "syntax_temp.ml"
 as _4))] -> Stmt 
# 325 "syntax.dyp"
(
    ( let target = uid () in
      List.concat
        [ [ Ast.Instr.conditional_jump
            (Ast.Expr.lognot test, Lexing.dummy_pos) target ];
          stmts;
          [ Ast.Instr.label target ] ] ):'dypgen__Stmt)
# 2022               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("block",[Dyp.Ter "IF";Dyp.Non_ter ("expr",Dyp.No_priority );Dyp.Ter "THEN";Dyp.Non_ter ("stmts",Dyp.No_priority );Dyp.Ter "ELSE";Dyp.Non_ter ("stmts",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ _1;Expr ( (
# 332 "syntax.dyp"
           (test:'dypgen__Expr)
# 2031               "syntax_temp.ml"
 as _2)); _3;Stmt ( (
# 332 "syntax.dyp"
                            (t:'dypgen__Stmt)
# 2035               "syntax_temp.ml"
 as _4)); _5;Stmt ( (
# 332 "syntax.dyp"
                                          (e:'dypgen__Stmt)
# 2039               "syntax_temp.ml"
 as _6))] -> Stmt 
# 332 "syntax.dyp"
(
    ( let target = uid () and target' = uid () in
      List.concat
        [ [ Ast.Instr.conditional_jump
            (Ast.Expr.lognot test, Lexing.dummy_pos) target ];
          t;
          [ Ast.Instr.goto target'; Ast.Instr.label target ];
          e;
          [ Ast.Instr.label target' ] ] ):'dypgen__Stmt)
# 2051               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("block",[Dyp.Ter "WHILE";Dyp.Non_ter ("expr",Dyp.No_priority );Dyp.Ter "DO";Dyp.Non_ter ("stmts",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ _1;Expr ( (
# 341 "syntax.dyp"
              (test:'dypgen__Expr)
# 2060               "syntax_temp.ml"
 as _2)); _3;Stmt ( (
# 341 "syntax.dyp"
                             (stmts:'dypgen__Stmt)
# 2064               "syntax_temp.ml"
 as _4))] -> Stmt 
# 341 "syntax.dyp"
(
    ( let target = uid () and target' = uid () in
      (* TOFIX #WEIRD: as SSE favour the "else" branch, we invert the
         construction to exit the loop faster. *)
      let target'' = uid () in
      List.concat
        [ [ Ast.Instr.label target;
            Ast.Instr.conditional_jump test target';
            Ast.Instr.goto target'';
            Ast.Instr.label target' ];
          stmts;
          [ Ast.Instr.goto target; Ast.Instr.label target'' ] ] ):'dypgen__Stmt)
# 2079               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("block",[Dyp.Ter "FOR";Dyp.Non_ter ("var",Dyp.No_priority );Dyp.Ter "IN";Dyp.Non_ter ("expr",Dyp.No_priority );Dyp.Ter "TO";Dyp.Non_ter ("expr",Dyp.No_priority );Dyp.Ter "DO";Dyp.Non_ter ("stmts",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ _1;Loc ( (
# 353 "syntax.dyp"
           (cnt:'dypgen__Loc)
# 2088               "syntax_temp.ml"
 as _2)); _3;Expr ( (
# 353 "syntax.dyp"
                        (init:'dypgen__Expr)
# 2092               "syntax_temp.ml"
 as _4)); _5;Expr ( (
# 353 "syntax.dyp"
                                      (upto:'dypgen__Expr)
# 2096               "syntax_temp.ml"
 as _6)); _7;Stmt ( (
# 353 "syntax.dyp"
                                                     (stmts:'dypgen__Stmt)
# 2100               "syntax_temp.ml"
 as _8))] -> Stmt 
# 353 "syntax.dyp"
(
    ( let target = uid () and target' = uid () in
      (* TOFIX #WEIRD: as SSE favour the "else" branch, we invert the
          construction to exit the loop faster. *)
      let target'' = uid () and ecnt = Ast.Expr.loc cnt, Lexing.dummy_pos in
      List.concat
        [ [ Ast.Instr.assign cnt init;
            Ast.Instr.label target;
            Ast.Instr.conditional_jump
              (Ast.Expr.sle ecnt upto, Lexing.dummy_pos) target';
            Ast.Instr.goto target'';
            Ast.Instr.label target' ];
          stmts;
          [ Ast.Instr.assign cnt (Ast.Expr.succ ecnt, Lexing.dummy_pos);
            Ast.Instr.goto target;
            Ast.Instr.label target'' ] ] ):'dypgen__Stmt)
# 2119               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("block",[Dyp.Ter "CASE";Dyp.Non_ter ("expr",Dyp.No_priority );Dyp.Ter "IS";Dyp.Non_ter ("dypgen__nested_nt_18",Dyp.No_priority );Dyp.Non_ter ("dypgen__nested_nt_21",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ _1;Expr ( (
# 369 "syntax.dyp"
             (choice:'dypgen__Expr)
# 2128               "syntax_temp.ml"
 as _2)); _3;Obj_dypgen__nested_nt_18 ( (
# 370 "syntax.dyp"
                                                                  (cases:'dypgen__Obj_dypgen__nested_nt_18)
# 2132               "syntax_temp.ml"
 as _4));Obj_dypgen__nested_nt_21 ( (
# 371 "syntax.dyp"
                      (default:'dypgen__Obj_dypgen__nested_nt_21)
# 2136               "syntax_temp.ml"
 as _5))] -> Stmt 
# 371 "syntax.dyp"
(
    ( let rec aux cases next stmts =
        match cases with
        | [] -> stmts
        | (value, body) :: cases ->
           let label = uid () in
           aux cases label @@
             Ast.Instr.label label
             :: Ast.Instr.conditional_jump
                  (Ast.Expr.diff value choice, Lexing.dummy_pos) next
             :: List.rev_append body stmts in
      let tail = uid () in
      let rev_stmts =
        List.rev_map
          (fun (value, body) ->
            value, (Ast.Instr.goto tail :: List.rev body)) cases in
      let tail_stmts = [ Ast.Instr.label tail ] in
      let default, default_stmts = match default with
        | None -> tail, tail_stmts
        | Some stmts ->
           let default = uid () in
           let default_stmts = List.rev_append stmts tail_stmts in
           default, Ast.Instr.label default :: default_stmts in
      aux rev_stmts default default_stmts ):'dypgen__Stmt)
# 2163               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_17",[Dyp.Non_ter ("const",Dyp.No_priority );Dyp.Regexp (Dyp.RE_Char ':');Dyp.Non_ter ("dypgen__nested_nt_15",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Expr ( (
# 370 "syntax.dyp"
           (k:'dypgen__Expr)
# 2172               "syntax_temp.ml"
 as _1)); Lexeme_matched _2;Obj_dypgen__nested_nt_15 ( (
# 370 "syntax.dyp"
                            (stmts:'dypgen__Obj_dypgen__nested_nt_15)
# 2176               "syntax_temp.ml"
 as _3))] -> Obj_dypgen__nested_nt_17 
# 369 "syntax.dyp"
(
                                    ( (k, List.flatten stmts) ):'dypgen__Obj_dypgen__nested_nt_17)
# 2181               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_14",[Dyp.Non_ter ("stmt",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Stmt ( (
(_:'dypgen__Stmt)
# 2189               "syntax_temp.ml"
 as _1))] -> Obj_dypgen__nested_nt_14 
(
(_1):'dypgen__Obj_dypgen__nested_nt_14)
# 2193               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_15",[Dyp.Non_ter ("dypgen__nested_nt_16",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_dypgen__nested_nt_16 ( (
(_:'dypgen__Obj_dypgen__nested_nt_16)
# 2201               "syntax_temp.ml"
 as _1))] -> Obj_dypgen__nested_nt_15 
(
(List.rev _1):'dypgen__Obj_dypgen__nested_nt_15)
# 2205               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_16",[Dyp.Non_ter ("dypgen__nested_nt_16",Dyp.No_priority );Dyp.Non_ter ("dypgen__nested_nt_14",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_dypgen__nested_nt_16 ( (
(_:'dypgen__Obj_dypgen__nested_nt_16)
# 2213               "syntax_temp.ml"
 as _1));Obj_dypgen__nested_nt_14 ( (
(_:'dypgen__Obj_dypgen__nested_nt_14)
# 2216               "syntax_temp.ml"
 as _2))] -> Obj_dypgen__nested_nt_16 
(
(_2::_1):'dypgen__Obj_dypgen__nested_nt_16)
# 2220               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_16",[Dyp.Non_ter ("dypgen__nested_nt_14",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_dypgen__nested_nt_14 ( (
(_:'dypgen__Obj_dypgen__nested_nt_14)
# 2228               "syntax_temp.ml"
 as _1))] -> Obj_dypgen__nested_nt_16 
(
([_1]):'dypgen__Obj_dypgen__nested_nt_16)
# 2232               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_18",[Dyp.Non_ter ("dypgen__nested_nt_19",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_dypgen__nested_nt_19 ( (
(_:'dypgen__Obj_dypgen__nested_nt_19)
# 2240               "syntax_temp.ml"
 as _1))] -> Obj_dypgen__nested_nt_18 
(
(List.rev _1):'dypgen__Obj_dypgen__nested_nt_18)
# 2244               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_19",[Dyp.Non_ter ("dypgen__nested_nt_19",Dyp.No_priority );Dyp.Non_ter ("dypgen__nested_nt_17",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_dypgen__nested_nt_19 ( (
(_:'dypgen__Obj_dypgen__nested_nt_19)
# 2252               "syntax_temp.ml"
 as _1));Obj_dypgen__nested_nt_17 ( (
(_:'dypgen__Obj_dypgen__nested_nt_17)
# 2255               "syntax_temp.ml"
 as _2))] -> Obj_dypgen__nested_nt_19 
(
(_2::_1):'dypgen__Obj_dypgen__nested_nt_19)
# 2259               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_19",[],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [] -> Obj_dypgen__nested_nt_19 
(
([]):'dypgen__Obj_dypgen__nested_nt_19)
# 2268               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_20",[Dyp.Regexp (Dyp.RE_Char '_');Dyp.Regexp (Dyp.RE_Char ':');Dyp.Non_ter ("stmts",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1; Lexeme_matched _2;Stmt ( (
(_:'dypgen__Stmt)
# 2276               "syntax_temp.ml"
 as _3))] -> Obj_dypgen__nested_nt_20 
(
(_3):'dypgen__Obj_dypgen__nested_nt_20)
# 2280               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_21",[],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [] -> Obj_dypgen__nested_nt_21 
(
(None):'dypgen__Obj_dypgen__nested_nt_21)
# 2289               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_21",[Dyp.Non_ter ("dypgen__nested_nt_20",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_dypgen__nested_nt_20 ( (
(_:'dypgen__Obj_dypgen__nested_nt_20)
# 2297               "syntax_temp.ml"
 as _1))] -> Obj_dypgen__nested_nt_21 
(
(Some _1):'dypgen__Obj_dypgen__nested_nt_21)
# 2301               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("control",[Dyp.Ter "GOTO";Dyp.Non_ter ("label",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ _1;String ( (
# 397 "syntax.dyp"
              (target:'dypgen__String)
# 2310               "syntax_temp.ml"
 as _2))] -> Stmt 
# 397 "syntax.dyp"
(
    ( [ Ast.Instr.goto target ] ):'dypgen__Stmt)
# 2315               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("control",[Dyp.Non_ter ("terminator",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Instr ( (
# 399 "syntax.dyp"
              (term:'dypgen__Instr)
# 2324               "syntax_temp.ml"
 as _1))] -> Stmt 
# 398 "syntax.dyp"
(
                     ( [ term ] ):'dypgen__Stmt)
# 2329               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("control",[Dyp.Ter "ABORT"],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ _1] -> Stmt 
# 400 "syntax.dyp"
(
    ( [ Ast.Instr.dynamic_assert (Ast.Expr.zero, Lexing.dummy_pos);
        Ast.Instr.halt ] ):'dypgen__Stmt)
# 2340               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("label",[Dyp.Regexp (Dyp.RE_Char '.');Dyp.Non_ter_NL ("ident",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1;String ( (
(_:'dypgen__String)
# 2348               "syntax_temp.ml"
 as _2))] -> String 
(
(_2):'dypgen__String)
# 2352               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("newline",[Dyp.Regexp (Dyp.RE_Char '\n')],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1] -> Obj_newline 
# 408 "syntax.dyp"
(
         ( (* Option.iter Dyp.set_newline dyp.local_data *) ):'dypgen__Obj_newline)
# 2362               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("accept_newline",[],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [] -> Obj_accept_newline 
# 411 "syntax.dyp"
(
    ( () ):'dypgen__Obj_accept_newline)
# 2372               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("accept_newline",[Dyp.Non_ter ("newline",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_newline ( (
(_:'dypgen__Obj_newline)
# 2380               "syntax_temp.ml"
 as _1))] -> Obj_accept_newline 
(
(_1):'dypgen__Obj_accept_newline)
# 2384               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("separator",[Dyp.Non_ter ("newline",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_newline ( (
(_:'dypgen__Obj_newline)
# 2392               "syntax_temp.ml"
 as _1))] -> Obj_separator 
(
(_1):'dypgen__Obj_separator)
# 2396               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("separator",[Dyp.Regexp (Dyp.RE_Char ';')],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1] -> Obj_separator 
# 416 "syntax.dyp"
(
         ( () ):'dypgen__Obj_separator)
# 2406               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("separator",[Dyp.Regexp (Dyp.RE_Eof_char)],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1] -> Obj_separator 
# 417 "syntax.dyp"
(
         ( () ):'dypgen__Obj_separator)
# 2416               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("stmt",[Dyp.Non_ter ("label",Dyp.No_priority );Dyp.Regexp (Dyp.RE_Char ':');Dyp.Non_ter ("separator",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [String ( (
# 421 "syntax.dyp"
         (label:'dypgen__String)
# 2425               "syntax_temp.ml"
 as _1)); Lexeme_matched _2;Obj_separator ( (
(_:'dypgen__Obj_separator)
# 2428               "syntax_temp.ml"
 as _3))] -> Stmt 
# 421 "syntax.dyp"
(
    ( [ Ast.Instr.label label ] ):'dypgen__Stmt)
# 2433               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("stmt",[Dyp.Non_ter ("dypgen__nested_nt_23",Dyp.No_priority );Dyp.Non_ter ("instr_or_block",Dyp.No_priority );Dyp.Non_ter ("separator",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_dypgen__nested_nt_23 ( (
# 423 "syntax.dyp"
                                   (label:'dypgen__Obj_dypgen__nested_nt_23)
# 2442               "syntax_temp.ml"
 as _1));Stmt ( (
# 423 "syntax.dyp"
                                                         (instr:'dypgen__Stmt)
# 2446               "syntax_temp.ml"
 as _2));Obj_separator ( (
(_:'dypgen__Obj_separator)
# 2449               "syntax_temp.ml"
 as _3))] -> Stmt 
# 423 "syntax.dyp"
(
    ( Option.fold ~none:instr
        ~some:(fun label -> Ast.Instr.label label :: instr) label ):'dypgen__Stmt)
# 2455               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_22",[Dyp.Non_ter ("label",Dyp.No_priority );Dyp.Regexp (Dyp.RE_Char ':')],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [String ( (
# 423 "syntax.dyp"
           (label:'dypgen__String)
# 2464               "syntax_temp.ml"
 as _1)); Lexeme_matched _2] -> Obj_dypgen__nested_nt_22 
# 422 "syntax.dyp"
(
                       ( label ):'dypgen__Obj_dypgen__nested_nt_22)
# 2469               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_23",[],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [] -> Obj_dypgen__nested_nt_23 
(
(None):'dypgen__Obj_dypgen__nested_nt_23)
# 2478               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_23",[Dyp.Non_ter ("dypgen__nested_nt_22",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_dypgen__nested_nt_22 ( (
(_:'dypgen__Obj_dypgen__nested_nt_22)
# 2486               "syntax_temp.ml"
 as _1))] -> Obj_dypgen__nested_nt_23 
(
(Some _1):'dypgen__Obj_dypgen__nested_nt_23)
# 2490               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("labelled",[],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [] -> Stmt 
# 427 "syntax.dyp"
(
    ( [] ):'dypgen__Stmt)
# 2500               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("labelled",[Dyp.Non_ter ("label",Dyp.No_priority );Dyp.Regexp (Dyp.RE_Char ':');Dyp.Non_ter ("stmts",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [String ( (
# 429 "syntax.dyp"
         (label:'dypgen__String)
# 2509               "syntax_temp.ml"
 as _1)); Lexeme_matched _2;Stmt ( (
# 429 "syntax.dyp"
                          (stmts:'dypgen__Stmt)
# 2513               "syntax_temp.ml"
 as _3))] -> Stmt 
# 429 "syntax.dyp"
(
    ( Ast.Instr.label label :: stmts ):'dypgen__Stmt)
# 2518               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("stmts",[Dyp.Non_ter ("dypgen__star___stmt",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_dypgen__star___stmt ( (
# 433 "syntax.dyp"
         (stmts:'dypgen__Stmt list)
# 2527               "syntax_temp.ml"
 as _1))] -> Stmt 
# 432 "syntax.dyp"
(
                 ( List.flatten stmts ):'dypgen__Stmt)
# 2532               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("stmts",[Dyp.Non_ter ("stmts",Dyp.No_priority );Dyp.Non_ter ("control",Dyp.No_priority );Dyp.Non_ter ("separator",Dyp.No_priority );Dyp.Non_ter ("labelled",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Stmt ( (
# 434 "syntax.dyp"
         (stmts:'dypgen__Stmt)
# 2541               "syntax_temp.ml"
 as _1));Stmt ( (
# 434 "syntax.dyp"
                        (control:'dypgen__Stmt)
# 2545               "syntax_temp.ml"
 as _2));Obj_separator ( (
(_:'dypgen__Obj_separator)
# 2548               "syntax_temp.ml"
 as _3));Stmt ( (
# 434 "syntax.dyp"
                                                    (labelled:'dypgen__Stmt)
# 2552               "syntax_temp.ml"
 as _4))] -> Stmt 
# 434 "syntax.dyp"
(
    (  List.concat [ stmts; control; labelled ] ):'dypgen__Stmt)
# 2557               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__star___stmt",[Dyp.Non_ter ("dypgen__nested_nt_24",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_dypgen__nested_nt_24 ( (
(_:'dypgen__Obj_dypgen__nested_nt_24)
# 2565               "syntax_temp.ml"
 as _1))] -> Obj_dypgen__star___stmt 
(
(List.rev _1):'dypgen__Stmt list)
# 2569               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_24",[Dyp.Non_ter ("dypgen__nested_nt_24",Dyp.No_priority );Dyp.Non_ter ("stmt",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_dypgen__nested_nt_24 ( (
(_:'dypgen__Obj_dypgen__nested_nt_24)
# 2577               "syntax_temp.ml"
 as _1));Stmt ( (
(_:'dypgen__Stmt)
# 2580               "syntax_temp.ml"
 as _2))] -> Obj_dypgen__nested_nt_24 
(
(_2::_1):'dypgen__Obj_dypgen__nested_nt_24)
# 2584               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dypgen__nested_nt_24",[],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [] -> Obj_dypgen__nested_nt_24 
(
([]):'dypgen__Obj_dypgen__nested_nt_24)
# 2593               "syntax_temp.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])],

([
  ("__dypgen_layout",(Dyp.RE_Char_set [(' ',' ');('\t','\t')]));
  ("AS",(Dyp.RE_String "as"));
  ("NONDET",(Dyp.RE_String "nondet"));
  ("UNDEF",(Dyp.RE_String "undef"));
  ("ASSERT",(Dyp.RE_String "assert"));
  ("ASSUME",(Dyp.RE_String "assume"));
  ("IF",(Dyp.RE_String "if"));
  ("THEN",(Dyp.RE_String "then"));
  ("ELSE",(Dyp.RE_String "else"));
  ("GOTO",(Dyp.RE_String "goto"));
  ("JUMP",(Dyp.RE_String "jump"));
  ("AT",(Dyp.RE_String "at"));
  ("HALT",(Dyp.RE_String "halt"));
  ("ABORT",(Dyp.RE_String "abort"));
  ("WHILE",(Dyp.RE_String "while"));
  ("FOR",(Dyp.RE_String "for"));
  ("IN",(Dyp.RE_String "in"));
  ("TO",(Dyp.RE_String "to"));
  ("DO",(Dyp.RE_String "do"));
  ("END",(Dyp.RE_String "end"));
  ("CASE",(Dyp.RE_String "case"));
  ("IS",(Dyp.RE_String "is"));
  ("VALUE",(Dyp.RE_String "value"));
  ("SIZE",(Dyp.RE_String "size"));
  ("LAST",(Dyp.RE_String "last"));
  ("CONST",(Dyp.RE_String "true"));
  ("CONST",(Dyp.RE_String "false"));
  ("LSL",(Dyp.RE_String "lsl"));
  ("LSR",(Dyp.RE_String "lsr"));
  ("ASR",(Dyp.RE_String "asr"));
  ("ROL",(Dyp.RE_String "rol"));
  ("ROR",(Dyp.RE_String "ror"));
  ("ZEXT",(Dyp.RE_Seq [Dyp.RE_String "uext";Dyp.RE_Plus (Dyp.RE_Name "digit")]));
  ("SEXT",(Dyp.RE_Seq [Dyp.RE_String "sext";Dyp.RE_Plus (Dyp.RE_Name "digit")]));
  ("INT",(Dyp.RE_Seq [Dyp.RE_Option (Dyp.RE_Char '-');Dyp.RE_Plus (Dyp.RE_Seq [Dyp.RE_Name "digit";Dyp.RE_Star (Dyp.RE_Char '_')])]));
  ("INT",(Dyp.RE_Alt [Dyp.RE_Name "bin";Dyp.RE_Name "hex"]));
  ("CONST",(Dyp.RE_Char '"'));
  ("CONST",(Dyp.RE_String "'"));
  ("__dypgen_layout",(Dyp.RE_Char '\n'));
  ("__dypgen_layout",(Dyp.RE_Name "comment"));
  ("__dypgen_layout",(Dyp.RE_Name "space"))],
[
  60,((fun lexbuf -> Obj___dypgen_layout));
  1,((fun lexbuf -> Obj_AS));
  38,((fun lexbuf -> Obj_NONDET));
  55,((fun lexbuf -> Obj_UNDEF));
  4,((fun lexbuf -> Obj_ASSERT));
  6,((fun lexbuf -> Obj_ASSUME));
  27,((fun lexbuf -> Obj_IF));
  52,((fun lexbuf -> Obj_THEN));
  17,((fun lexbuf -> Obj_ELSE));
  24,((fun lexbuf -> Obj_GOTO));
  32,((fun lexbuf -> Obj_JUMP));
  7,((fun lexbuf -> Obj_AT));
  25,((fun lexbuf -> Obj_HALT));
  0,((fun lexbuf -> Obj_ABORT));
  57,((fun lexbuf -> Obj_WHILE));
  21,((fun lexbuf -> Obj_FOR));
  29,((fun lexbuf -> Obj_IN));
  54,((fun lexbuf -> Obj_TO));
  16,((fun lexbuf -> Obj_DO));
  18,((fun lexbuf -> Obj_END));
  10,((fun lexbuf -> Obj_CASE));
  31,((fun lexbuf -> Obj_IS));
  56,((fun lexbuf -> Obj_VALUE));
  47,((fun lexbuf -> Obj_SIZE));
  33,((fun lexbuf -> Obj_LAST));
  11,((fun lexbuf -> Obj_CONST
# 118 "syntax.dyp"
(
                                    ( Bitvector.one ):'dypgen__Obj_CONST)
# 2669               "syntax_temp.ml"
));
  11,((fun lexbuf -> Obj_CONST
# 119 "syntax.dyp"
(
                                    ( Bitvector.zero ):'dypgen__Obj_CONST)
# 2675               "syntax_temp.ml"
));
  35,((fun lexbuf -> Obj_LSL));
  36,((fun lexbuf -> Obj_LSR));
  3,((fun lexbuf -> Obj_ASR));
  42,((fun lexbuf -> Obj_ROL));
  43,((fun lexbuf -> Obj_ROR));
  59,((fun lexbuf -> Obj_ZEXT
# 126 "syntax.dyp"
(
                            ( Scanf.sscanf (Dyp.lexeme lexbuf) "uext%d" Fun.id ):'dypgen__Obj_ZEXT)
# 2686               "syntax_temp.ml"
));
  46,((fun lexbuf -> Obj_SEXT
# 128 "syntax.dyp"
(
                            ( Scanf.sscanf (Dyp.lexeme lexbuf) "sext%d" Fun.id ):'dypgen__Obj_SEXT)
# 2692               "syntax_temp.ml"
));
  30,((fun lexbuf -> Obj_INT
# 129 "syntax.dyp"
(
                                  ( Z.of_string (Dyp.lexeme lexbuf) ):'dypgen__Obj_INT)
# 2698               "syntax_temp.ml"
));
  30,((fun lexbuf -> Obj_INT
# 130 "syntax.dyp"
(
                                  ( Z.of_string (Dyp.lexeme lexbuf) ):'dypgen__Obj_INT)
# 2704               "syntax_temp.ml"
));
  11,((fun lexbuf -> Obj_CONST
# 131 "syntax.dyp"
(
                                    ( string dquote lexbuf ):'dypgen__Obj_CONST)
# 2710               "syntax_temp.ml"
));
  11,((fun lexbuf -> Obj_CONST
# 132 "syntax.dyp"
(
                                    ( string quote lexbuf ):'dypgen__Obj_CONST)
# 2716               "syntax_temp.ml"
));
  60,((fun lexbuf -> Obj___dypgen_layout));
  60,((fun lexbuf -> Obj___dypgen_layout));
  60,((fun lexbuf -> Obj___dypgen_layout))]),

[("dquote",([
    (Dyp.RE_Seq [Dyp.RE_Char '"';Dyp.RE_Char 'z']);
    (Dyp.RE_Char '"');
    (Dyp.RE_Char_set [('\000','\255')])],[(fun __dypgen_av_list lexbuf -> (match __dypgen_av_list with [(Lex_dquote_Arg_buf (buf:'dypgen__Lex_dquote_Arg_buf))] -> Lex_dquote
# 85 "syntax.dyp"
(
            ( Buffer.add_char buf '\x00' ):'dypgen__Lex_dquote)
# 2729               "syntax_temp.ml"
  | _ -> failwith "lexing: bad action variable list when calling lexer user action"));(fun __dypgen_av_list lexbuf -> (match __dypgen_av_list with [(Lex_dquote_Arg_buf (buf:'dypgen__Lex_dquote_Arg_buf))] -> Lex_dquote
# 86 "syntax.dyp"
(
            ( () ):'dypgen__Lex_dquote)
# 2734               "syntax_temp.ml"
  | _ -> failwith "lexing: bad action variable list when calling lexer user action"));(fun __dypgen_av_list lexbuf -> (match __dypgen_av_list with [(Lex_dquote_Arg_buf (buf:'dypgen__Lex_dquote_Arg_buf))] -> Lex_dquote
# 87 "syntax.dyp"
(
            ( Buffer.add_string buf (Dyp.lexeme lexbuf); dquote buf lexbuf ):'dypgen__Lex_dquote)
# 2739               "syntax_temp.ml"
  | _ -> failwith "lexing: bad action variable list when calling lexer user action"))]));("quote",([
    (Dyp.RE_String "'z");
    (Dyp.RE_String "'");
    (Dyp.RE_Char_set [('\000','\255')])],[(fun __dypgen_av_list lexbuf -> (match __dypgen_av_list with [(Lex_quote_Arg_buf (buf:'dypgen__Lex_quote_Arg_buf))] -> Lex_quote
# 89 "syntax.dyp"
(
         ( Buffer.add_char buf '\x00' ):'dypgen__Lex_quote)
# 2747               "syntax_temp.ml"
  | _ -> failwith "lexing: bad action variable list when calling lexer user action"));(fun __dypgen_av_list lexbuf -> (match __dypgen_av_list with [(Lex_quote_Arg_buf (buf:'dypgen__Lex_quote_Arg_buf))] -> Lex_quote
# 90 "syntax.dyp"
(
         ( () ):'dypgen__Lex_quote)
# 2752               "syntax_temp.ml"
  | _ -> failwith "lexing: bad action variable list when calling lexer user action"));(fun __dypgen_av_list lexbuf -> (match __dypgen_av_list with [(Lex_quote_Arg_buf (buf:'dypgen__Lex_quote_Arg_buf))] -> Lex_quote
# 91 "syntax.dyp"
(
         ( Buffer.add_string buf (Dyp.lexeme lexbuf); quote buf lexbuf ):'dypgen__Lex_quote)
# 2757               "syntax_temp.ml"
  | _ -> failwith "lexing: bad action variable list when calling lexer user action"))]))]

let __dypgen_regexp_decl = [
  ("space",(Dyp.RE_Alt [Dyp.RE_Alt [Dyp.RE_Char ' ';Dyp.RE_Char '\t'];Dyp.RE_Char '\r']));
  ("digit",(Dyp.RE_Char_set [('0','9')]));
  ("hexdigit",(Dyp.RE_Char_set [('0','9');('A','F');('a','f')]));
  ("hex",(Dyp.RE_Seq [Dyp.RE_Seq [Dyp.RE_Char '0';Dyp.RE_Char 'x'];Dyp.RE_Plus (Dyp.RE_Seq [Dyp.RE_Name "hexdigit";Dyp.RE_Star (Dyp.RE_Char '_')])]));
  ("bin",(Dyp.RE_Seq [Dyp.RE_Seq [Dyp.RE_Char '0';Dyp.RE_Char 'b'];Dyp.RE_Plus (Dyp.RE_Seq [Dyp.RE_Char_set [('0','0');('1','1')];Dyp.RE_Star (Dyp.RE_Char '_')])]));
  ("alpha",(Dyp.RE_Char_set [('a','z');('A','Z')]));
  ("alpha_num",(Dyp.RE_Alt [Dyp.RE_Name "alpha";Dyp.RE_Name "digit"]));
  ("sident",(Dyp.RE_Seq [Dyp.RE_Seq [Dyp.RE_Seq [Dyp.RE_Star (Dyp.RE_Char '_');Dyp.RE_Name "alpha"];Dyp.RE_Star (Dyp.RE_Alt [Dyp.RE_Name "alpha_num";Dyp.RE_Char '_'])];Dyp.RE_Star (Dyp.RE_Seq [Dyp.RE_Char '.';Dyp.RE_Plus (Dyp.RE_Alt [Dyp.RE_Name "alpha_num";Dyp.RE_Char '_'])])]));
  ("tempvar",(Dyp.RE_Seq [Dyp.RE_String "%%";Dyp.RE_Plus (Dyp.RE_Name "digit")]));
  ("wident",(Dyp.RE_Star (Dyp.RE_Char_set_exclu [(':',':');('>','>');(' ',' ');('#','#');('\n','\n')])));
  ("comment",(Dyp.RE_Seq [Dyp.RE_Char '#';Dyp.RE_Star (Dyp.RE_Char_set_exclu [('\n','\n')])]))]

let dyp_merge_Binop l =
  match dyp_merge_Binop l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Decl l =
  match dyp_merge_Decl l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Expr l =
  match dyp_merge_Expr l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Instr l =
  match dyp_merge_Instr l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Lex_dquote l =
  match dyp_merge_Lex_dquote l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Lex_dquote_Arg_buf l =
  match dyp_merge_Lex_dquote_Arg_buf l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Lex_quote l =
  match dyp_merge_Lex_quote l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Lex_quote_Arg_buf l =
  match dyp_merge_Lex_quote_Arg_buf l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Lexeme_matched l =
  match dyp_merge_Lexeme_matched l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Loc l =
  match dyp_merge_Loc l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj l =
  match dyp_merge_Obj l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_CONST l =
  match dyp_merge_Obj_CONST l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_INT l =
  match dyp_merge_Obj_INT l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_SEXT l =
  match dyp_merge_Obj_SEXT l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_ZEXT l =
  match dyp_merge_Obj_ZEXT l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_accept_newline l =
  match dyp_merge_Obj_accept_newline l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_array l =
  match dyp_merge_Obj_array l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_attr l =
  match dyp_merge_Obj_attr l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dypgen__nested_nt_0 l =
  match dyp_merge_Obj_dypgen__nested_nt_0 l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dypgen__nested_nt_1 l =
  match dyp_merge_Obj_dypgen__nested_nt_1 l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dypgen__nested_nt_10 l =
  match dyp_merge_Obj_dypgen__nested_nt_10 l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dypgen__nested_nt_11 l =
  match dyp_merge_Obj_dypgen__nested_nt_11 l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dypgen__nested_nt_12 l =
  match dyp_merge_Obj_dypgen__nested_nt_12 l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dypgen__nested_nt_13 l =
  match dyp_merge_Obj_dypgen__nested_nt_13 l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dypgen__nested_nt_14 l =
  match dyp_merge_Obj_dypgen__nested_nt_14 l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dypgen__nested_nt_15 l =
  match dyp_merge_Obj_dypgen__nested_nt_15 l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dypgen__nested_nt_16 l =
  match dyp_merge_Obj_dypgen__nested_nt_16 l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dypgen__nested_nt_17 l =
  match dyp_merge_Obj_dypgen__nested_nt_17 l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dypgen__nested_nt_18 l =
  match dyp_merge_Obj_dypgen__nested_nt_18 l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dypgen__nested_nt_19 l =
  match dyp_merge_Obj_dypgen__nested_nt_19 l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dypgen__nested_nt_2 l =
  match dyp_merge_Obj_dypgen__nested_nt_2 l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dypgen__nested_nt_20 l =
  match dyp_merge_Obj_dypgen__nested_nt_20 l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dypgen__nested_nt_21 l =
  match dyp_merge_Obj_dypgen__nested_nt_21 l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dypgen__nested_nt_22 l =
  match dyp_merge_Obj_dypgen__nested_nt_22 l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dypgen__nested_nt_23 l =
  match dyp_merge_Obj_dypgen__nested_nt_23 l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dypgen__nested_nt_24 l =
  match dyp_merge_Obj_dypgen__nested_nt_24 l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dypgen__nested_nt_3 l =
  match dyp_merge_Obj_dypgen__nested_nt_3 l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dypgen__nested_nt_4 l =
  match dyp_merge_Obj_dypgen__nested_nt_4 l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dypgen__nested_nt_5 l =
  match dyp_merge_Obj_dypgen__nested_nt_5 l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dypgen__nested_nt_6 l =
  match dyp_merge_Obj_dypgen__nested_nt_6 l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dypgen__nested_nt_7 l =
  match dyp_merge_Obj_dypgen__nested_nt_7 l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dypgen__nested_nt_8 l =
  match dyp_merge_Obj_dypgen__nested_nt_8 l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dypgen__nested_nt_9 l =
  match dyp_merge_Obj_dypgen__nested_nt_9 l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dypgen__star___stmt l =
  match dyp_merge_Obj_dypgen__star___stmt l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_endianness l =
  match dyp_merge_Obj_endianness l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_newline l =
  match dyp_merge_Obj_newline l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_range l =
  match dyp_merge_Obj_range l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_separator l =
  match dyp_merge_Obj_separator l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Program l =
  match dyp_merge_Program l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Stmt l =
  match dyp_merge_Stmt l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_String l =
  match dyp_merge_String l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Symbol l =
  match dyp_merge_Symbol l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Unop l =
  match dyp_merge_Unop l with
    | ([],_,_) -> dyp_merge l
    | res -> res

let __dypgen_merge_list = [(fun l -> (
  let f1 (o,gd,ld) = match o with Binop ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Binop"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Binop l in
  let f2 o = Binop o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Decl ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Decl"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Decl l in
  let f2 o = Decl o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Expr ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Expr"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Expr l in
  let f2 o = Expr o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Instr ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Instr"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Instr l in
  let f2 o = Instr o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Lex_dquote ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Lex_dquote"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Lex_dquote l in
  let f2 o = Lex_dquote o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Lex_dquote_Arg_buf ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Lex_dquote_Arg_buf"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Lex_dquote_Arg_buf l in
  let f2 o = Lex_dquote_Arg_buf o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Lex_quote ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Lex_quote"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Lex_quote l in
  let f2 o = Lex_quote o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Lex_quote_Arg_buf ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Lex_quote_Arg_buf"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Lex_quote_Arg_buf l in
  let f2 o = Lex_quote_Arg_buf o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Lexeme_matched ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Lexeme_matched"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Lexeme_matched l in
  let f2 o = Lexeme_matched o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Loc ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Loc"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Loc l in
  let f2 o = Loc o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj l in
  let f2 o = Obj o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_CONST ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_CONST"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_CONST l in
  let f2 o = Obj_CONST o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_INT ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_INT"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_INT l in
  let f2 o = Obj_INT o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_SEXT ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_SEXT"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_SEXT l in
  let f2 o = Obj_SEXT o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_ZEXT ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_ZEXT"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_ZEXT l in
  let f2 o = Obj_ZEXT o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_accept_newline ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_accept_newline"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_accept_newline l in
  let f2 o = Obj_accept_newline o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_array ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_array"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_array l in
  let f2 o = Obj_array o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_attr ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_attr"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_attr l in
  let f2 o = Obj_attr o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dypgen__nested_nt_0 ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dypgen__nested_nt_0"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dypgen__nested_nt_0 l in
  let f2 o = Obj_dypgen__nested_nt_0 o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dypgen__nested_nt_1 ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dypgen__nested_nt_1"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dypgen__nested_nt_1 l in
  let f2 o = Obj_dypgen__nested_nt_1 o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dypgen__nested_nt_10 ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dypgen__nested_nt_10"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dypgen__nested_nt_10 l in
  let f2 o = Obj_dypgen__nested_nt_10 o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dypgen__nested_nt_11 ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dypgen__nested_nt_11"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dypgen__nested_nt_11 l in
  let f2 o = Obj_dypgen__nested_nt_11 o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dypgen__nested_nt_12 ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dypgen__nested_nt_12"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dypgen__nested_nt_12 l in
  let f2 o = Obj_dypgen__nested_nt_12 o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dypgen__nested_nt_13 ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dypgen__nested_nt_13"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dypgen__nested_nt_13 l in
  let f2 o = Obj_dypgen__nested_nt_13 o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dypgen__nested_nt_14 ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dypgen__nested_nt_14"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dypgen__nested_nt_14 l in
  let f2 o = Obj_dypgen__nested_nt_14 o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dypgen__nested_nt_15 ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dypgen__nested_nt_15"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dypgen__nested_nt_15 l in
  let f2 o = Obj_dypgen__nested_nt_15 o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dypgen__nested_nt_16 ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dypgen__nested_nt_16"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dypgen__nested_nt_16 l in
  let f2 o = Obj_dypgen__nested_nt_16 o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dypgen__nested_nt_17 ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dypgen__nested_nt_17"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dypgen__nested_nt_17 l in
  let f2 o = Obj_dypgen__nested_nt_17 o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dypgen__nested_nt_18 ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dypgen__nested_nt_18"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dypgen__nested_nt_18 l in
  let f2 o = Obj_dypgen__nested_nt_18 o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dypgen__nested_nt_19 ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dypgen__nested_nt_19"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dypgen__nested_nt_19 l in
  let f2 o = Obj_dypgen__nested_nt_19 o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dypgen__nested_nt_2 ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dypgen__nested_nt_2"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dypgen__nested_nt_2 l in
  let f2 o = Obj_dypgen__nested_nt_2 o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dypgen__nested_nt_20 ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dypgen__nested_nt_20"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dypgen__nested_nt_20 l in
  let f2 o = Obj_dypgen__nested_nt_20 o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dypgen__nested_nt_21 ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dypgen__nested_nt_21"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dypgen__nested_nt_21 l in
  let f2 o = Obj_dypgen__nested_nt_21 o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dypgen__nested_nt_22 ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dypgen__nested_nt_22"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dypgen__nested_nt_22 l in
  let f2 o = Obj_dypgen__nested_nt_22 o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dypgen__nested_nt_23 ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dypgen__nested_nt_23"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dypgen__nested_nt_23 l in
  let f2 o = Obj_dypgen__nested_nt_23 o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dypgen__nested_nt_24 ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dypgen__nested_nt_24"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dypgen__nested_nt_24 l in
  let f2 o = Obj_dypgen__nested_nt_24 o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dypgen__nested_nt_3 ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dypgen__nested_nt_3"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dypgen__nested_nt_3 l in
  let f2 o = Obj_dypgen__nested_nt_3 o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dypgen__nested_nt_4 ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dypgen__nested_nt_4"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dypgen__nested_nt_4 l in
  let f2 o = Obj_dypgen__nested_nt_4 o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dypgen__nested_nt_5 ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dypgen__nested_nt_5"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dypgen__nested_nt_5 l in
  let f2 o = Obj_dypgen__nested_nt_5 o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dypgen__nested_nt_6 ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dypgen__nested_nt_6"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dypgen__nested_nt_6 l in
  let f2 o = Obj_dypgen__nested_nt_6 o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dypgen__nested_nt_7 ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dypgen__nested_nt_7"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dypgen__nested_nt_7 l in
  let f2 o = Obj_dypgen__nested_nt_7 o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dypgen__nested_nt_8 ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dypgen__nested_nt_8"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dypgen__nested_nt_8 l in
  let f2 o = Obj_dypgen__nested_nt_8 o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dypgen__nested_nt_9 ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dypgen__nested_nt_9"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dypgen__nested_nt_9 l in
  let f2 o = Obj_dypgen__nested_nt_9 o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dypgen__star___stmt ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dypgen__star___stmt"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dypgen__star___stmt l in
  let f2 o = Obj_dypgen__star___stmt o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_endianness ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_endianness"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_endianness l in
  let f2 o = Obj_endianness o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_newline ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_newline"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_newline l in
  let f2 o = Obj_newline o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_range ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_range"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_range l in
  let f2 o = Obj_range o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_separator ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_separator"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_separator l in
  let f2 o = Obj_separator o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Program ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Program"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Program l in
  let f2 o = Program o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Stmt ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Stmt"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Stmt l in
  let f2 o = Stmt o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with String ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_String"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_String l in
  let f2 o = String o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Symbol ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Symbol"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Symbol l in
  let f2 o = Symbol o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Unop ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Unop"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Unop l in
  let f2 o = Unop o in
  (List.map f2 ol, gd, ld)))]



let __dypgen_test_cons () =  [|
  (fun x -> match x with Binop _ -> true | _ -> false);
  (fun x -> match x with Decl _ -> true | _ -> false);
  (fun x -> match x with Expr _ -> true | _ -> false);
  (fun x -> match x with Instr _ -> true | _ -> false);
  (fun x -> match x with Lex_dquote _ -> true | _ -> false);
  (fun x -> match x with Lex_dquote_Arg_buf _ -> true | _ -> false);
  (fun x -> match x with Lex_quote _ -> true | _ -> false);
  (fun x -> match x with Lex_quote_Arg_buf _ -> true | _ -> false);
  (fun x -> match x with Lexeme_matched _ -> true | _ -> false);
  (fun x -> match x with Loc _ -> true | _ -> false);
  (fun x -> match x with Obj _ -> true | _ -> false);
  (fun x -> match x with Obj_CONST _ -> true | _ -> false);
  (fun x -> match x with Obj_INT _ -> true | _ -> false);
  (fun x -> match x with Obj_SEXT _ -> true | _ -> false);
  (fun x -> match x with Obj_ZEXT _ -> true | _ -> false);
  (fun x -> match x with Obj_accept_newline _ -> true | _ -> false);
  (fun x -> match x with Obj_array _ -> true | _ -> false);
  (fun x -> match x with Obj_attr _ -> true | _ -> false);
  (fun x -> match x with Obj_dypgen__nested_nt_0 _ -> true | _ -> false);
  (fun x -> match x with Obj_dypgen__nested_nt_1 _ -> true | _ -> false);
  (fun x -> match x with Obj_dypgen__nested_nt_10 _ -> true | _ -> false);
  (fun x -> match x with Obj_dypgen__nested_nt_11 _ -> true | _ -> false);
  (fun x -> match x with Obj_dypgen__nested_nt_12 _ -> true | _ -> false);
  (fun x -> match x with Obj_dypgen__nested_nt_13 _ -> true | _ -> false);
  (fun x -> match x with Obj_dypgen__nested_nt_14 _ -> true | _ -> false);
  (fun x -> match x with Obj_dypgen__nested_nt_15 _ -> true | _ -> false);
  (fun x -> match x with Obj_dypgen__nested_nt_16 _ -> true | _ -> false);
  (fun x -> match x with Obj_dypgen__nested_nt_17 _ -> true | _ -> false);
  (fun x -> match x with Obj_dypgen__nested_nt_18 _ -> true | _ -> false);
  (fun x -> match x with Obj_dypgen__nested_nt_19 _ -> true | _ -> false);
  (fun x -> match x with Obj_dypgen__nested_nt_2 _ -> true | _ -> false);
  (fun x -> match x with Obj_dypgen__nested_nt_20 _ -> true | _ -> false);
  (fun x -> match x with Obj_dypgen__nested_nt_21 _ -> true | _ -> false);
  (fun x -> match x with Obj_dypgen__nested_nt_22 _ -> true | _ -> false);
  (fun x -> match x with Obj_dypgen__nested_nt_23 _ -> true | _ -> false);
  (fun x -> match x with Obj_dypgen__nested_nt_24 _ -> true | _ -> false);
  (fun x -> match x with Obj_dypgen__nested_nt_3 _ -> true | _ -> false);
  (fun x -> match x with Obj_dypgen__nested_nt_4 _ -> true | _ -> false);
  (fun x -> match x with Obj_dypgen__nested_nt_5 _ -> true | _ -> false);
  (fun x -> match x with Obj_dypgen__nested_nt_6 _ -> true | _ -> false);
  (fun x -> match x with Obj_dypgen__nested_nt_7 _ -> true | _ -> false);
  (fun x -> match x with Obj_dypgen__nested_nt_8 _ -> true | _ -> false);
  (fun x -> match x with Obj_dypgen__nested_nt_9 _ -> true | _ -> false);
  (fun x -> match x with Obj_dypgen__star___stmt _ -> true | _ -> false);
  (fun x -> match x with Obj_endianness _ -> true | _ -> false);
  (fun x -> match x with Obj_newline _ -> true | _ -> false);
  (fun x -> match x with Obj_range _ -> true | _ -> false);
  (fun x -> match x with Obj_separator _ -> true | _ -> false);
  (fun x -> match x with Program _ -> true | _ -> false);
  (fun x -> match x with Stmt _ -> true | _ -> false);
  (fun x -> match x with String _ -> true | _ -> false);
  (fun x -> match x with Symbol _ -> true | _ -> false);
  (fun x -> match x with Unop _ -> true | _ -> false)|]

let __dypgen_dummy_marker_2 = ()
let pp () = Dyp.make_parser
  __dypgen_ra_list Dyp_priority_data.relations global_data local_data
  (Dyp.Tools.make_nt_cons_map Dyp_symbols_array.nt_cons_list)
  Dyp_symbols_array.entry_points
  
  false 61 true
  
  Dyp_aux_functions.get_token_value
  Dyp_symbols.get_token_name Dyp_symbols.str_token
  global_data_equal local_data_equal (__dypgen_test_cons ())
  Dyp_symbols_array.str_cons
  Dyp_symbols_array.cons_array Dyp_aux_functions.cons_table
  (Dyp.Tools.array_of_list __dypgen_merge_list)
  dypgen_lexbuf_position __dypgen_regexp_decl __dypgen_main_lexer
  __dypgen_aux_lexer Dyp_symbols.ter_string_list
  (fun lexbuf -> Lexeme_matched (Dyp.lexeme lexbuf))
  true


let __dypgen_dummy_marker_5 = ()

let __dypgen_dummy_marker_3 = ()

let stmts ?(global_data=global_data) ?(local_data=local_data) lexbuf =
  let pf = Dyp.lexparse (pp ()) "stmts" ~global_data:global_data
    ~local_data:local_data ~match_len:dypgen_match_length
    ~keep_data:dypgen_keep_data
    ~use_rule_order:dypgen_use_rule_order
    ~use_all_actions:dypgen_use_all_actions
    ~choose_token:dypgen_choose_token lexbuf in
  let aux1 (o,p) = match o with
    | Stmt r -> (r,p)
    | _ -> failwith "Wrong type for entry result" in
  List.map aux1 pf


let __dypgen_dummy_marker_4 = ()

