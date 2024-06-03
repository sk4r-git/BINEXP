
(* The type of tokens. *)

type token = 
  | XOR
  | VAR
  | UNIMPLEMENTED
  | UNDEFINED
  | UNDEF
  | UNCONTROLLED
  | TRUE
  | TMP of (string)
  | THEN
  | TEMPTAG
  | TEMPORARY
  | SUPER
  | STRING of (string)
  | STOP
  | STAR_U
  | STAR_S
  | STAR
  | SOK
  | SLASH_U
  | SLASH_S
  | SKO
  | SEMICOLON
  | RSHIFTU
  | RSHIFTS
  | RROTATE
  | RPAR
  | RETURNFLAG
  | REGISTER
  | REACH
  | RBRACKETU
  | RBRACKETS
  | RBRACKET
  | RBRACE
  | PLUS
  | OR
  | NOT
  | NONDET
  | NEQ
  | MODU
  | MODS
  | MINUS
  | MIN
  | MAX
  | LTU
  | LTS
  | LSHIFT
  | LROTATE
  | LPAR
  | LEU
  | LES
  | LBRACKET
  | LBRACE
  | INT of (string)
  | INFER
  | IF
  | IDENT of (string)
  | HEXA of (string)
  | GTU
  | GTS
  | GOTO
  | GEU
  | GES
  | FROMFILE
  | FROM
  | FLAGTAG
  | FLAG
  | FILE
  | FALSE
  | EXTU
  | EXTS
  | EQUAL
  | EOF
  | ENUMERATE
  | ENTRYPOINT
  | ELSE
  | DOTDOT
  | DOT
  | CUT
  | CONSEQUENT
  | CONCAT
  | COMMA
  | COLON
  | CALLFLAG
  | BSWAP
  | BIN of (string)
  | AT
  | ASSUME
  | ASSIGN
  | ASSERT
  | AS
  | ARROWINV
  | ARROW
  | ANNOT
  | AND
  | ALTERNATIVE
  | ALTERNATE

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val patchmap: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Binstream.t Virtual_address.Map.t)

val instruction_eof: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Dba_types.Instruction.t)

val initialization: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Parse_helpers.Initialization.t list)

val expr_eof: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Dba_types.Expr.t)

val directives: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Directive.t list)

val dhunk_substitutions_eof: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> ((Loader_utils.Binary_loc.t * Dhunk.t) list)

val dhunk_eof: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Dhunk.t)

val decoder_msg: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> ((string * Parse_helpers.Message.Value.t) list *
  (Dba.address * Dba_types.Instruction.t) list)

val decoder_base: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> ((string * Parse_helpers.Message.Value.t) list)

val dba: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Dba_types.program)

val body: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> ((Dba.address * Dba_types.Instruction.t) list)
