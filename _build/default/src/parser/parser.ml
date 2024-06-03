
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | XOR
    | VAR
    | UNIMPLEMENTED
    | UNDEFINED
    | UNDEF
    | UNCONTROLLED
    | TRUE
    | TMP of (
# 61 "src/parser/parser.mly"
       (string)
# 22 "src/parser/parser.ml"
  )
    | THEN
    | TEMPTAG
    | TEMPORARY
    | SUPER
    | STRING of (
# 64 "src/parser/parser.mly"
       (string)
# 31 "src/parser/parser.ml"
  )
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
    | INT of (
# 60 "src/parser/parser.mly"
       (string)
# 75 "src/parser/parser.ml"
  )
    | INFER
    | IF
    | IDENT of (
# 61 "src/parser/parser.mly"
       (string)
# 82 "src/parser/parser.ml"
  )
    | HEXA of (
# 62 "src/parser/parser.mly"
       (string)
# 87 "src/parser/parser.ml"
  )
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
    | BIN of (
# 63 "src/parser/parser.mly"
       (string)
# 119 "src/parser/parser.ml"
  )
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
  
end

include MenhirBasics

# 22 "src/parser/parser.mly"
  
  open Dba
  open Parse_helpers

  let unknown_successor = -1

  let default_endianness = Utils.get_opt_or_default Machine.LittleEndian

  let mk_declaration (tag:Var.Tag.t) name size =
     Declarations.add name size tag;
     let bitsize = Size.Bit.create size in
     Dba.LValue.var name ~bitsize ~tag


  let _dummy_addr = Virtual_address.create 0


# 155 "src/parser/parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState000 : ('s, _menhir_box_body) _menhir_state
    (** State 000.
        Stack shape : .
        Start symbol: body. *)

  | MenhirState001 : (('s, 'r) _menhir_cell1_LPAR, 'r) _menhir_state
    (** State 001.
        Stack shape : LPAR.
        Start symbol: <undetermined>. *)

  | MenhirState002 : (('s, 'r) _menhir_cell1_INT, 'r) _menhir_state
    (** State 002.
        Stack shape : INT.
        Start symbol: <undetermined>. *)

  | MenhirState013 : (('s, 'r) _menhir_cell1_localized_instruction, 'r) _menhir_state
    (** State 013.
        Stack shape : localized_instruction.
        Start symbol: <undetermined>. *)

  | MenhirState015 : (('s, 'r) _menhir_cell1_address, 'r) _menhir_state
    (** State 015.
        Stack shape : address.
        Start symbol: <undetermined>. *)

  | MenhirState016 : (('s, 'r) _menhir_cell1_TMP, 'r) _menhir_state
    (** State 016.
        Stack shape : TMP.
        Start symbol: <undetermined>. *)

  | MenhirState029 : (('s, 'r) _menhir_cell1_IF, 'r) _menhir_state
    (** State 029.
        Stack shape : IF.
        Start symbol: <undetermined>. *)

  | MenhirState031 : ((('s, 'r) _menhir_cell1_IF, 'r) _menhir_cell1_TRUE, 'r) _menhir_state
    (** State 031.
        Stack shape : IF TRUE.
        Start symbol: <undetermined>. *)

  | MenhirState038 : (('s, 'r) _menhir_cell1_TMP, 'r) _menhir_state
    (** State 038.
        Stack shape : TMP.
        Start symbol: <undetermined>. *)

  | MenhirState040 : (('s, 'r) _menhir_cell1_NOT, 'r) _menhir_state
    (** State 040.
        Stack shape : NOT.
        Start symbol: <undetermined>. *)

  | MenhirState041 : (('s, 'r) _menhir_cell1_MINUS, 'r) _menhir_state
    (** State 041.
        Stack shape : MINUS.
        Start symbol: <undetermined>. *)

  | MenhirState043 : (('s, 'r) _menhir_cell1_MIN, 'r) _menhir_state
    (** State 043.
        Stack shape : MIN.
        Start symbol: <undetermined>. *)

  | MenhirState045 : (('s, 'r) _menhir_cell1_MAX, 'r) _menhir_state
    (** State 045.
        Stack shape : MAX.
        Start symbol: <undetermined>. *)

  | MenhirState046 : (('s, 'r) _menhir_cell1_LPAR, 'r) _menhir_state
    (** State 046.
        Stack shape : LPAR.
        Start symbol: <undetermined>. *)

  | MenhirState047 : (('s, 'r) _menhir_cell1_IF, 'r) _menhir_state
    (** State 047.
        Stack shape : IF.
        Start symbol: <undetermined>. *)

  | MenhirState048 : (('s, 'r) _menhir_cell1_IDENT, 'r) _menhir_state
    (** State 048.
        Stack shape : IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState050 : (('s, 'r) _menhir_cell1_EXTU, 'r) _menhir_state
    (** State 050.
        Stack shape : EXTU.
        Start symbol: <undetermined>. *)

  | MenhirState051 : (('s, 'r) _menhir_cell1_EXTS, 'r) _menhir_state
    (** State 051.
        Stack shape : EXTS.
        Start symbol: <undetermined>. *)

  | MenhirState052 : (('s, 'r) _menhir_cell1_BSWAP, 'r) _menhir_state
    (** State 052.
        Stack shape : BSWAP.
        Start symbol: <undetermined>. *)

  | MenhirState054 : (('s, 'r) _menhir_cell1_AT, 'r) _menhir_state
    (** State 054.
        Stack shape : AT.
        Start symbol: <undetermined>. *)

  | MenhirState055 : ((('s, 'r) _menhir_cell1_AT, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 055.
        Stack shape : AT expr.
        Start symbol: <undetermined>. *)

  | MenhirState056 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_XOR, 'r) _menhir_state
    (** State 056.
        Stack shape : expr XOR.
        Start symbol: <undetermined>. *)

  | MenhirState057 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_XOR, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 057.
        Stack shape : expr XOR expr.
        Start symbol: <undetermined>. *)

  | MenhirState058 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_AND, 'r) _menhir_state
    (** State 058.
        Stack shape : expr AND.
        Start symbol: <undetermined>. *)

  | MenhirState061 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_STAR_U, 'r) _menhir_state
    (** State 061.
        Stack shape : expr STAR_U.
        Start symbol: <undetermined>. *)

  | MenhirState062 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_STAR_U, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 062.
        Stack shape : expr STAR_U expr.
        Start symbol: <undetermined>. *)

  | MenhirState063 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_OR, 'r) _menhir_state
    (** State 063.
        Stack shape : expr OR.
        Start symbol: <undetermined>. *)

  | MenhirState064 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_OR, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 064.
        Stack shape : expr OR expr.
        Start symbol: <undetermined>. *)

  | MenhirState065 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_STAR_S, 'r) _menhir_state
    (** State 065.
        Stack shape : expr STAR_S.
        Start symbol: <undetermined>. *)

  | MenhirState066 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_STAR_S, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 066.
        Stack shape : expr STAR_S expr.
        Start symbol: <undetermined>. *)

  | MenhirState067 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_STAR, 'r) _menhir_state
    (** State 067.
        Stack shape : expr STAR.
        Start symbol: <undetermined>. *)

  | MenhirState068 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_STAR, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 068.
        Stack shape : expr STAR expr.
        Start symbol: <undetermined>. *)

  | MenhirState069 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_SLASH_U, 'r) _menhir_state
    (** State 069.
        Stack shape : expr SLASH_U.
        Start symbol: <undetermined>. *)

  | MenhirState070 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_SLASH_U, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 070.
        Stack shape : expr SLASH_U expr.
        Start symbol: <undetermined>. *)

  | MenhirState071 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_SLASH_S, 'r) _menhir_state
    (** State 071.
        Stack shape : expr SLASH_S.
        Start symbol: <undetermined>. *)

  | MenhirState072 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_SLASH_S, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 072.
        Stack shape : expr SLASH_S expr.
        Start symbol: <undetermined>. *)

  | MenhirState073 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_RSHIFTU, 'r) _menhir_state
    (** State 073.
        Stack shape : expr RSHIFTU.
        Start symbol: <undetermined>. *)

  | MenhirState074 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_RSHIFTU, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 074.
        Stack shape : expr RSHIFTU expr.
        Start symbol: <undetermined>. *)

  | MenhirState075 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_PLUS, 'r) _menhir_state
    (** State 075.
        Stack shape : expr PLUS.
        Start symbol: <undetermined>. *)

  | MenhirState076 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_PLUS, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 076.
        Stack shape : expr PLUS expr.
        Start symbol: <undetermined>. *)

  | MenhirState077 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_MODU, 'r) _menhir_state
    (** State 077.
        Stack shape : expr MODU.
        Start symbol: <undetermined>. *)

  | MenhirState078 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_MODU, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 078.
        Stack shape : expr MODU expr.
        Start symbol: <undetermined>. *)

  | MenhirState079 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_MODS, 'r) _menhir_state
    (** State 079.
        Stack shape : expr MODS.
        Start symbol: <undetermined>. *)

  | MenhirState080 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_MODS, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 080.
        Stack shape : expr MODS expr.
        Start symbol: <undetermined>. *)

  | MenhirState081 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_MINUS, 'r) _menhir_state
    (** State 081.
        Stack shape : expr MINUS.
        Start symbol: <undetermined>. *)

  | MenhirState082 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_MINUS, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 082.
        Stack shape : expr MINUS expr.
        Start symbol: <undetermined>. *)

  | MenhirState083 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_RSHIFTS, 'r) _menhir_state
    (** State 083.
        Stack shape : expr RSHIFTS.
        Start symbol: <undetermined>. *)

  | MenhirState084 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_RSHIFTS, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 084.
        Stack shape : expr RSHIFTS expr.
        Start symbol: <undetermined>. *)

  | MenhirState085 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_RROTATE, 'r) _menhir_state
    (** State 085.
        Stack shape : expr RROTATE.
        Start symbol: <undetermined>. *)

  | MenhirState086 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_RROTATE, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 086.
        Stack shape : expr RROTATE expr.
        Start symbol: <undetermined>. *)

  | MenhirState087 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_NEQ, 'r) _menhir_state
    (** State 087.
        Stack shape : expr NEQ.
        Start symbol: <undetermined>. *)

  | MenhirState088 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_NEQ, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 088.
        Stack shape : expr NEQ expr.
        Start symbol: <undetermined>. *)

  | MenhirState089 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_LSHIFT, 'r) _menhir_state
    (** State 089.
        Stack shape : expr LSHIFT.
        Start symbol: <undetermined>. *)

  | MenhirState090 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_LSHIFT, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 090.
        Stack shape : expr LSHIFT expr.
        Start symbol: <undetermined>. *)

  | MenhirState091 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_LROTATE, 'r) _menhir_state
    (** State 091.
        Stack shape : expr LROTATE.
        Start symbol: <undetermined>. *)

  | MenhirState092 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_LROTATE, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 092.
        Stack shape : expr LROTATE expr.
        Start symbol: <undetermined>. *)

  | MenhirState093 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_CONCAT, 'r) _menhir_state
    (** State 093.
        Stack shape : expr CONCAT.
        Start symbol: <undetermined>. *)

  | MenhirState094 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_CONCAT, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 094.
        Stack shape : expr CONCAT expr.
        Start symbol: <undetermined>. *)

  | MenhirState095 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_LTU, 'r) _menhir_state
    (** State 095.
        Stack shape : expr LTU.
        Start symbol: <undetermined>. *)

  | MenhirState096 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_LTU, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 096.
        Stack shape : expr LTU expr.
        Start symbol: <undetermined>. *)

  | MenhirState097 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_LTS, 'r) _menhir_state
    (** State 097.
        Stack shape : expr LTS.
        Start symbol: <undetermined>. *)

  | MenhirState098 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_LTS, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 098.
        Stack shape : expr LTS expr.
        Start symbol: <undetermined>. *)

  | MenhirState099 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_LEU, 'r) _menhir_state
    (** State 099.
        Stack shape : expr LEU.
        Start symbol: <undetermined>. *)

  | MenhirState100 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_LEU, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 100.
        Stack shape : expr LEU expr.
        Start symbol: <undetermined>. *)

  | MenhirState101 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_LES, 'r) _menhir_state
    (** State 101.
        Stack shape : expr LES.
        Start symbol: <undetermined>. *)

  | MenhirState102 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_LES, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 102.
        Stack shape : expr LES expr.
        Start symbol: <undetermined>. *)

  | MenhirState109 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_GTU, 'r) _menhir_state
    (** State 109.
        Stack shape : expr GTU.
        Start symbol: <undetermined>. *)

  | MenhirState110 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_GTU, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 110.
        Stack shape : expr GTU expr.
        Start symbol: <undetermined>. *)

  | MenhirState111 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_GTS, 'r) _menhir_state
    (** State 111.
        Stack shape : expr GTS.
        Start symbol: <undetermined>. *)

  | MenhirState112 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_GTS, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 112.
        Stack shape : expr GTS expr.
        Start symbol: <undetermined>. *)

  | MenhirState113 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_GEU, 'r) _menhir_state
    (** State 113.
        Stack shape : expr GEU.
        Start symbol: <undetermined>. *)

  | MenhirState114 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_GEU, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 114.
        Stack shape : expr GEU expr.
        Start symbol: <undetermined>. *)

  | MenhirState115 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_GES, 'r) _menhir_state
    (** State 115.
        Stack shape : expr GES.
        Start symbol: <undetermined>. *)

  | MenhirState116 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_GES, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 116.
        Stack shape : expr GES expr.
        Start symbol: <undetermined>. *)

  | MenhirState117 : ((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_EQUAL, 'r) _menhir_state
    (** State 117.
        Stack shape : expr EQUAL.
        Start symbol: <undetermined>. *)

  | MenhirState118 : (((('s, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_EQUAL, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 118.
        Stack shape : expr EQUAL expr.
        Start symbol: <undetermined>. *)

  | MenhirState130 : ((('s, 'r) _menhir_cell1_BSWAP, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 130.
        Stack shape : BSWAP expr.
        Start symbol: <undetermined>. *)

  | MenhirState131 : ((('s, 'r) _menhir_cell1_EXTS, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 131.
        Stack shape : EXTS expr.
        Start symbol: <undetermined>. *)

  | MenhirState133 : ((('s, 'r) _menhir_cell1_EXTU, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 133.
        Stack shape : EXTU expr.
        Start symbol: <undetermined>. *)

  | MenhirState135 : ((('s, 'r) _menhir_cell1_IF, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 135.
        Stack shape : IF expr.
        Start symbol: <undetermined>. *)

  | MenhirState136 : (((('s, 'r) _menhir_cell1_IF, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_THEN, 'r) _menhir_state
    (** State 136.
        Stack shape : IF expr THEN.
        Start symbol: <undetermined>. *)

  | MenhirState137 : ((((('s, 'r) _menhir_cell1_IF, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_THEN, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 137.
        Stack shape : IF expr THEN expr.
        Start symbol: <undetermined>. *)

  | MenhirState138 : (((((('s, 'r) _menhir_cell1_IF, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_THEN, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_ELSE, 'r) _menhir_state
    (** State 138.
        Stack shape : IF expr THEN expr ELSE.
        Start symbol: <undetermined>. *)

  | MenhirState139 : ((((((('s, 'r) _menhir_cell1_IF, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_THEN, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_ELSE, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 139.
        Stack shape : IF expr THEN expr ELSE expr.
        Start symbol: <undetermined>. *)

  | MenhirState140 : ((('s, 'r) _menhir_cell1_LPAR, 'r) _menhir_cell1_COMMA, 'r) _menhir_state
    (** State 140.
        Stack shape : LPAR COMMA.
        Start symbol: <undetermined>. *)

  | MenhirState143 : ((('s, 'r) _menhir_cell1_LPAR, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 143.
        Stack shape : LPAR expr.
        Start symbol: <undetermined>. *)

  | MenhirState145 : ((('s, 'r) _menhir_cell1_MAX, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 145.
        Stack shape : MAX expr.
        Start symbol: <undetermined>. *)

  | MenhirState146 : (((('s, 'r) _menhir_cell1_MAX, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_COMMA, 'r) _menhir_state
    (** State 146.
        Stack shape : MAX expr COMMA.
        Start symbol: <undetermined>. *)

  | MenhirState147 : ((((('s, 'r) _menhir_cell1_MAX, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_COMMA, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 147.
        Stack shape : MAX expr COMMA expr.
        Start symbol: <undetermined>. *)

  | MenhirState149 : ((('s, 'r) _menhir_cell1_MIN, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 149.
        Stack shape : MIN expr.
        Start symbol: <undetermined>. *)

  | MenhirState150 : (((('s, 'r) _menhir_cell1_MIN, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_COMMA, 'r) _menhir_state
    (** State 150.
        Stack shape : MIN expr COMMA.
        Start symbol: <undetermined>. *)

  | MenhirState151 : ((((('s, 'r) _menhir_cell1_MIN, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_COMMA, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 151.
        Stack shape : MIN expr COMMA expr.
        Start symbol: <undetermined>. *)

  | MenhirState153 : ((('s, 'r) _menhir_cell1_MINUS, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 153.
        Stack shape : MINUS expr.
        Start symbol: <undetermined>. *)

  | MenhirState156 : ((('s, 'r) _menhir_cell1_IF, 'r) _menhir_cell1_FALSE, 'r) _menhir_state
    (** State 156.
        Stack shape : IF FALSE.
        Start symbol: <undetermined>. *)

  | MenhirState161 : ((('s, 'r) _menhir_cell1_IF, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 161.
        Stack shape : IF expr.
        Start symbol: <undetermined>. *)

  | MenhirState162 : (((('s, 'r) _menhir_cell1_IF, 'r) _menhir_cell1_expr, 'r) _menhir_cell1_GOTO, 'r) _menhir_state
    (** State 162.
        Stack shape : IF expr GOTO.
        Start symbol: <undetermined>. *)

  | MenhirState167 : (('s, 'r) _menhir_cell1_IDENT, 'r) _menhir_state
    (** State 167.
        Stack shape : IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState175 : (('s, 'r) _menhir_cell1_GOTO, 'r) _menhir_state
    (** State 175.
        Stack shape : GOTO.
        Start symbol: <undetermined>. *)

  | MenhirState176 : ((('s, 'r) _menhir_cell1_GOTO, 'r) _menhir_cell1_LPAR, 'r) _menhir_state
    (** State 176.
        Stack shape : GOTO LPAR.
        Start symbol: <undetermined>. *)

  | MenhirState178 : ((('s, 'r) _menhir_cell1_GOTO, 'r) _menhir_cell1_INT, 'r) _menhir_state
    (** State 178.
        Stack shape : GOTO INT.
        Start symbol: <undetermined>. *)

  | MenhirState179 : ((('s, 'r) _menhir_cell1_GOTO, 'r) _menhir_cell1_static_target, 'r) _menhir_state
    (** State 179.
        Stack shape : GOTO static_target.
        Start symbol: <undetermined>. *)

  | MenhirState182 : (('s, 'r) _menhir_cell1_ANNOT, 'r) _menhir_state
    (** State 182.
        Stack shape : ANNOT.
        Start symbol: <undetermined>. *)

  | MenhirState187 : ((('s, 'r) _menhir_cell1_GOTO, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 187.
        Stack shape : GOTO expr.
        Start symbol: <undetermined>. *)

  | MenhirState191 : (('s, 'r) _menhir_cell1_AT, 'r) _menhir_state
    (** State 191.
        Stack shape : AT.
        Start symbol: <undetermined>. *)

  | MenhirState192 : ((('s, 'r) _menhir_cell1_AT, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 192.
        Stack shape : AT expr.
        Start symbol: <undetermined>. *)

  | MenhirState205 : (('s, 'r) _menhir_cell1_ASSUME, 'r) _menhir_state
    (** State 205.
        Stack shape : ASSUME.
        Start symbol: <undetermined>. *)

  | MenhirState210 : ((('s, 'r) _menhir_cell1_ASSUME, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 210.
        Stack shape : ASSUME expr.
        Start symbol: <undetermined>. *)

  | MenhirState213 : (('s, 'r) _menhir_cell1_ASSERT, 'r) _menhir_state
    (** State 213.
        Stack shape : ASSERT.
        Start symbol: <undetermined>. *)

  | MenhirState218 : ((('s, 'r) _menhir_cell1_ASSERT, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 218.
        Stack shape : ASSERT expr.
        Start symbol: <undetermined>. *)

  | MenhirState221 : (('s, 'r) _menhir_cell1_lvalue, 'r) _menhir_state
    (** State 221.
        Stack shape : lvalue.
        Start symbol: <undetermined>. *)

  | MenhirState226 : ((('s, 'r) _menhir_cell1_lvalue, 'r) _menhir_cell1_expr, 'r) _menhir_state
    (** State 226.
        Stack shape : lvalue expr.
        Start symbol: <undetermined>. *)

  | MenhirState240 : ('s, _menhir_box_dba) _menhir_state
    (** State 240.
        Stack shape : .
        Start symbol: dba. *)

  | MenhirState244 : ('s _menhir_cell0_config, _menhir_box_dba) _menhir_state
    (** State 244.
        Stack shape : config.
        Start symbol: dba. *)

  | MenhirState264 : (('s _menhir_cell0_config, _menhir_box_dba) _menhir_cell1_list_terminated_declaration_SEMICOLON__, _menhir_box_dba) _menhir_state
    (** State 264.
        Stack shape : config list(terminated(declaration,SEMICOLON)).
        Start symbol: dba. *)

  | MenhirState265 : ((('s _menhir_cell0_config, _menhir_box_dba) _menhir_cell1_list_terminated_declaration_SEMICOLON__, _menhir_box_dba) _menhir_cell1_list_terminated_assignment_SEMICOLON__, _menhir_box_dba) _menhir_state
    (** State 265.
        Stack shape : config list(terminated(declaration,SEMICOLON)) list(terminated(assignment,SEMICOLON)).
        Start symbol: dba. *)

  | MenhirState268 : (('s, _menhir_box_dba) _menhir_cell1_assignment, _menhir_box_dba) _menhir_state
    (** State 268.
        Stack shape : assignment.
        Start symbol: dba. *)

  | MenhirState271 : (('s, _menhir_box_dba) _menhir_cell1_declaration, _menhir_box_dba) _menhir_state
    (** State 271.
        Stack shape : declaration.
        Start symbol: dba. *)

  | MenhirState273 : ('s, _menhir_box_decoder_base) _menhir_state
    (** State 273.
        Stack shape : .
        Start symbol: decoder_base. *)

  | MenhirState276 : (('s, 'r) _menhir_cell1_LPAR _menhir_cell0_IDENT, 'r) _menhir_state
    (** State 276.
        Stack shape : LPAR IDENT.
        Start symbol: <undetermined>. *)

  | MenhirState283 : (('s, _menhir_box_decoder_base) _menhir_cell1_kv, _menhir_box_decoder_base) _menhir_state
    (** State 283.
        Stack shape : kv.
        Start symbol: decoder_base. *)

  | MenhirState288 : ((('s, _menhir_box_decoder_base) _menhir_cell1_kv, _menhir_box_decoder_base) _menhir_cell1_kv, _menhir_box_decoder_base) _menhir_state
    (** State 288.
        Stack shape : kv kv.
        Start symbol: decoder_base. *)

  | MenhirState289 : (((('s, _menhir_box_decoder_base) _menhir_cell1_kv, _menhir_box_decoder_base) _menhir_cell1_kv, _menhir_box_decoder_base) _menhir_cell1_kv, _menhir_box_decoder_base) _menhir_state
    (** State 289.
        Stack shape : kv kv kv.
        Start symbol: decoder_base. *)

  | MenhirState292 : (('s, _menhir_box_decoder_base) _menhir_cell1_LPAR _menhir_cell0_IDENT, _menhir_box_decoder_base) _menhir_state
    (** State 292.
        Stack shape : LPAR IDENT.
        Start symbol: decoder_base. *)

  | MenhirState297 : ('s, _menhir_box_decoder_msg) _menhir_state
    (** State 297.
        Stack shape : .
        Start symbol: decoder_msg. *)

  | MenhirState298 : (('s, _menhir_box_decoder_msg) _menhir_cell1_kv, _menhir_box_decoder_msg) _menhir_state
    (** State 298.
        Stack shape : kv.
        Start symbol: decoder_msg. *)

  | MenhirState303 : ((('s, _menhir_box_decoder_msg) _menhir_cell1_kv, _menhir_box_decoder_msg) _menhir_cell1_kv, _menhir_box_decoder_msg) _menhir_state
    (** State 303.
        Stack shape : kv kv.
        Start symbol: decoder_msg. *)

  | MenhirState304 : (((('s, _menhir_box_decoder_msg) _menhir_cell1_kv, _menhir_box_decoder_msg) _menhir_cell1_kv, _menhir_box_decoder_msg) _menhir_cell1_kv, _menhir_box_decoder_msg) _menhir_state
    (** State 304.
        Stack shape : kv kv kv.
        Start symbol: decoder_msg. *)

  | MenhirState307 : (('s, _menhir_box_decoder_msg) _menhir_cell1_decoder_base, _menhir_box_decoder_msg) _menhir_state
    (** State 307.
        Stack shape : decoder_base.
        Start symbol: decoder_msg. *)

  | MenhirState308 : ((('s, _menhir_box_decoder_msg) _menhir_cell1_decoder_base, _menhir_box_decoder_msg) _menhir_cell1_LPAR, _menhir_box_decoder_msg) _menhir_state
    (** State 308.
        Stack shape : decoder_base LPAR.
        Start symbol: decoder_msg. *)

  | MenhirState313 : ('s, _menhir_box_dhunk_eof) _menhir_state
    (** State 313.
        Stack shape : .
        Start symbol: dhunk_eof. *)

  | MenhirState315 : (('s, 'r) _menhir_cell1_INT, 'r) _menhir_state
    (** State 315.
        Stack shape : INT.
        Start symbol: <undetermined>. *)

  | MenhirState318 : (('s, 'r) _menhir_cell1_labelled_instruction, 'r) _menhir_state
    (** State 318.
        Stack shape : labelled_instruction.
        Start symbol: <undetermined>. *)

  | MenhirState323 : ('s, _menhir_box_dhunk_substitutions_eof) _menhir_state
    (** State 323.
        Stack shape : .
        Start symbol: dhunk_substitutions_eof. *)

  | MenhirState329 : (('s, _menhir_box_dhunk_substitutions_eof) _menhir_cell1_INFER _menhir_cell0_bin_loc_with_id, _menhir_box_dhunk_substitutions_eof) _menhir_state
    (** State 329.
        Stack shape : INFER bin_loc_with_id.
        Start symbol: dhunk_substitutions_eof. *)

  | MenhirState333 : (('s, _menhir_box_dhunk_substitutions_eof) _menhir_cell1_INFER _menhir_cell0_bin_loc_with_id, _menhir_box_dhunk_substitutions_eof) _menhir_state
    (** State 333.
        Stack shape : INFER bin_loc_with_id.
        Start symbol: dhunk_substitutions_eof. *)

  | MenhirState339 : (('s, _menhir_box_dhunk_substitutions_eof) _menhir_cell1_dhunk_substitution, _menhir_box_dhunk_substitutions_eof) _menhir_state
    (** State 339.
        Stack shape : dhunk_substitution.
        Start symbol: dhunk_substitutions_eof. *)

  | MenhirState342 : (('s, _menhir_box_dhunk_substitutions_eof) _menhir_cell1_binary_loc, _menhir_box_dhunk_substitutions_eof) _menhir_state
    (** State 342.
        Stack shape : binary_loc.
        Start symbol: dhunk_substitutions_eof. *)

  | MenhirState344 : ('s, _menhir_box_directives) _menhir_state
    (** State 344.
        Stack shape : .
        Start symbol: directives. *)

  | MenhirState348 : (('s, _menhir_box_directives) _menhir_cell1_located_directive, _menhir_box_directives) _menhir_state
    (** State 348.
        Stack shape : located_directive.
        Start symbol: directives. *)

  | MenhirState350 : (('s, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_state
    (** State 350.
        Stack shape : expr.
        Start symbol: directives. *)

  | MenhirState351 : ((('s, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_THEN, _menhir_box_directives) _menhir_state
    (** State 351.
        Stack shape : expr THEN.
        Start symbol: directives. *)

  | MenhirState354 : ((('s, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_REACH, _menhir_box_directives) _menhir_state
    (** State 354.
        Stack shape : expr REACH.
        Start symbol: directives. *)

  | MenhirState356 : (((('s, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_REACH, _menhir_box_directives) _menhir_cell1_LPAR, _menhir_box_directives) _menhir_state
    (** State 356.
        Stack shape : expr REACH LPAR.
        Start symbol: directives. *)

  | MenhirState358 : ((((('s, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_REACH, _menhir_box_directives) _menhir_cell1_LPAR, _menhir_box_directives) _menhir_cell1_integer, _menhir_box_directives) _menhir_state
    (** State 358.
        Stack shape : expr REACH LPAR integer.
        Start symbol: directives. *)

  | MenhirState359 : (('s, _menhir_box_directives) _menhir_cell1_IF, _menhir_box_directives) _menhir_state
    (** State 359.
        Stack shape : IF.
        Start symbol: directives. *)

  | MenhirState360 : ((('s, _menhir_box_directives) _menhir_cell1_IF, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_state
    (** State 360.
        Stack shape : IF expr.
        Start symbol: directives. *)

  | MenhirState363 : ((('s, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_PLUS, _menhir_box_directives) _menhir_state
    (** State 363.
        Stack shape : expr PLUS.
        Start symbol: directives. *)

  | MenhirState365 : ((('s, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_MINUS, _menhir_box_directives) _menhir_state
    (** State 365.
        Stack shape : expr MINUS.
        Start symbol: directives. *)

  | MenhirState367 : ((('s, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_ENUMERATE, _menhir_box_directives) _menhir_state
    (** State 367.
        Stack shape : expr ENUMERATE.
        Start symbol: directives. *)

  | MenhirState368 : (((('s, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_ENUMERATE, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_state
    (** State 368.
        Stack shape : expr ENUMERATE expr.
        Start symbol: directives. *)

  | MenhirState369 : ((((('s, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_ENUMERATE, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_LPAR, _menhir_box_directives) _menhir_state
    (** State 369.
        Stack shape : expr ENUMERATE expr LPAR.
        Start symbol: directives. *)

  | MenhirState372 : ((('s, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_ELSE, _menhir_box_directives) _menhir_state
    (** State 372.
        Stack shape : expr ELSE.
        Start symbol: directives. *)

  | MenhirState374 : ((('s, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_CUT, _menhir_box_directives) _menhir_state
    (** State 374.
        Stack shape : expr CUT.
        Start symbol: directives. *)

  | MenhirState376 : ((('s, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_CONSEQUENT, _menhir_box_directives) _menhir_state
    (** State 376.
        Stack shape : expr CONSEQUENT.
        Start symbol: directives. *)

  | MenhirState378 : ((('s, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_ASSUME, _menhir_box_directives) _menhir_state
    (** State 378.
        Stack shape : expr ASSUME.
        Start symbol: directives. *)

  | MenhirState379 : (((('s, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_ASSUME, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_state
    (** State 379.
        Stack shape : expr ASSUME expr.
        Start symbol: directives. *)

  | MenhirState380 : ((('s, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_ALTERNATIVE, _menhir_box_directives) _menhir_state
    (** State 380.
        Stack shape : expr ALTERNATIVE.
        Start symbol: directives. *)

  | MenhirState384 : ('s, _menhir_box_expr_eof) _menhir_state
    (** State 384.
        Stack shape : .
        Start symbol: expr_eof. *)

  | MenhirState386 : (('s, _menhir_box_expr_eof) _menhir_cell1_expr, _menhir_box_expr_eof) _menhir_state
    (** State 386.
        Stack shape : expr.
        Start symbol: expr_eof. *)

  | MenhirState388 : ('s, _menhir_box_initialization) _menhir_state
    (** State 388.
        Stack shape : .
        Start symbol: initialization. *)

  | MenhirState390 : (('s, _menhir_box_initialization) _menhir_cell1_ASSUME, _menhir_box_initialization) _menhir_state
    (** State 390.
        Stack shape : ASSUME.
        Start symbol: initialization. *)

  | MenhirState391 : ((('s, _menhir_box_initialization) _menhir_cell1_ASSUME, _menhir_box_initialization) _menhir_cell1_expr, _menhir_box_initialization) _menhir_state
    (** State 391.
        Stack shape : ASSUME expr.
        Start symbol: initialization. *)

  | MenhirState395 : (('s, _menhir_box_initialization) _menhir_cell1_initialization_directive, _menhir_box_initialization) _menhir_state
    (** State 395.
        Stack shape : initialization_directive.
        Start symbol: initialization. *)

  | MenhirState397 : (('s, _menhir_box_initialization) _menhir_cell1_boption_UNCONTROLLED_, _menhir_box_initialization) _menhir_state
    (** State 397.
        Stack shape : boption(UNCONTROLLED).
        Start symbol: initialization. *)

  | MenhirState399 : ((('s, _menhir_box_initialization) _menhir_cell1_boption_UNCONTROLLED_, _menhir_box_initialization) _menhir_cell1_lvalue, _menhir_box_initialization) _menhir_state
    (** State 399.
        Stack shape : boption(UNCONTROLLED) lvalue.
        Start symbol: initialization. *)

  | MenhirState400 : (((('s, _menhir_box_initialization) _menhir_cell1_boption_UNCONTROLLED_, _menhir_box_initialization) _menhir_cell1_lvalue, _menhir_box_initialization) _menhir_cell1_LBRACKET, _menhir_box_initialization) _menhir_state
    (** State 400.
        Stack shape : boption(UNCONTROLLED) lvalue LBRACKET.
        Start symbol: initialization. *)

  | MenhirState401 : ((((('s, _menhir_box_initialization) _menhir_cell1_boption_UNCONTROLLED_, _menhir_box_initialization) _menhir_cell1_lvalue, _menhir_box_initialization) _menhir_cell1_LBRACKET, _menhir_box_initialization) _menhir_cell1_expr, _menhir_box_initialization) _menhir_state
    (** State 401.
        Stack shape : boption(UNCONTROLLED) lvalue LBRACKET expr.
        Start symbol: initialization. *)

  | MenhirState404 : (((((('s, _menhir_box_initialization) _menhir_cell1_boption_UNCONTROLLED_, _menhir_box_initialization) _menhir_cell1_lvalue, _menhir_box_initialization) _menhir_cell1_LBRACKET, _menhir_box_initialization) _menhir_cell1_expr, _menhir_box_initialization) _menhir_cell1_either_DOTDOT_COMMA_, _menhir_box_initialization) _menhir_state
    (** State 404.
        Stack shape : boption(UNCONTROLLED) lvalue LBRACKET expr either(DOTDOT,COMMA).
        Start symbol: initialization. *)

  | MenhirState405 : ((((((('s, _menhir_box_initialization) _menhir_cell1_boption_UNCONTROLLED_, _menhir_box_initialization) _menhir_cell1_lvalue, _menhir_box_initialization) _menhir_cell1_LBRACKET, _menhir_box_initialization) _menhir_cell1_expr, _menhir_box_initialization) _menhir_cell1_either_DOTDOT_COMMA_, _menhir_box_initialization) _menhir_cell1_expr, _menhir_box_initialization) _menhir_state
    (** State 405.
        Stack shape : boption(UNCONTROLLED) lvalue LBRACKET expr either(DOTDOT,COMMA) expr.
        Start symbol: initialization. *)

  | MenhirState408 : (((('s, _menhir_box_initialization) _menhir_cell1_boption_UNCONTROLLED_, _menhir_box_initialization) _menhir_cell1_lvalue, _menhir_box_initialization) _menhir_cell1_LBRACE, _menhir_box_initialization) _menhir_state
    (** State 408.
        Stack shape : boption(UNCONTROLLED) lvalue LBRACE.
        Start symbol: initialization. *)

  | MenhirState411 : (('s, _menhir_box_initialization) _menhir_cell1_expr, _menhir_box_initialization) _menhir_state
    (** State 411.
        Stack shape : expr.
        Start symbol: initialization. *)

  | MenhirState412 : ((('s, _menhir_box_initialization) _menhir_cell1_expr, _menhir_box_initialization) _menhir_cell1_COMMA, _menhir_box_initialization) _menhir_state
    (** State 412.
        Stack shape : expr COMMA.
        Start symbol: initialization. *)

  | MenhirState425 : ('s, _menhir_box_instruction_eof) _menhir_state
    (** State 425.
        Stack shape : .
        Start symbol: instruction_eof. *)

  | MenhirState429 : ('s, _menhir_box_patchmap) _menhir_state
    (** State 429.
        Stack shape : .
        Start symbol: patchmap. *)

  | MenhirState430 : (('s, _menhir_box_patchmap) _menhir_cell1_LPAR, _menhir_box_patchmap) _menhir_state
    (** State 430.
        Stack shape : LPAR.
        Start symbol: patchmap. *)

  | MenhirState433 : ((('s, _menhir_box_patchmap) _menhir_cell1_LPAR, _menhir_box_patchmap) _menhir_cell1_integer, _menhir_box_patchmap) _menhir_state
    (** State 433.
        Stack shape : LPAR integer.
        Start symbol: patchmap. *)

  | MenhirState436 : (('s, _menhir_box_patchmap) _menhir_cell1_integer, _menhir_box_patchmap) _menhir_state
    (** State 436.
        Stack shape : integer.
        Start symbol: patchmap. *)

  | MenhirState441 : (('s, _menhir_box_patchmap) _menhir_cell1_patch, _menhir_box_patchmap) _menhir_state
    (** State 441.
        Stack shape : patch.
        Start symbol: patchmap. *)


and ('s, 'r) _menhir_cell1_address = 
  | MenhirCell1_address of 's * ('s, 'r) _menhir_state * (Dba.address)

and ('s, 'r) _menhir_cell1_assignment = 
  | MenhirCell1_assignment of 's * ('s, 'r) _menhir_state * (Dba_types.Instruction.t)

and 's _menhir_cell0_bin_loc_with_id = 
  | MenhirCell0_bin_loc_with_id of 's * (Loader_utils.Binary_loc.t)

and ('s, 'r) _menhir_cell1_binary_loc = 
  | MenhirCell1_binary_loc of 's * ('s, 'r) _menhir_state * (Loader_utils.Binary_loc.t)

and ('s, 'r) _menhir_cell1_boption_UNCONTROLLED_ = 
  | MenhirCell1_boption_UNCONTROLLED_ of 's * ('s, 'r) _menhir_state * (bool)

and 's _menhir_cell0_config = 
  | MenhirCell0_config of 's * (Dba.address)

and ('s, 'r) _menhir_cell1_constant = 
  | MenhirCell1_constant of 's * ('s, 'r) _menhir_state * (Bitvector.t)

and ('s, 'r) _menhir_cell1_declaration = 
  | MenhirCell1_declaration of 's * ('s, 'r) _menhir_state * (Dba_types.LValue.t)

and ('s, 'r) _menhir_cell1_decoder_base = 
  | MenhirCell1_decoder_base of 's * ('s, 'r) _menhir_state * ((string * Parse_helpers.Message.Value.t) list)

and ('s, 'r) _menhir_cell1_dhunk_substitution = 
  | MenhirCell1_dhunk_substitution of 's * ('s, 'r) _menhir_state * (Loader_utils.Binary_loc.t * Dhunk.t)

and ('s, 'r) _menhir_cell1_either_DOTDOT_COMMA_ = 
  | MenhirCell1_either_DOTDOT_COMMA_ of 's * ('s, 'r) _menhir_state * (unit)

and ('s, 'r) _menhir_cell1_expr = 
  | MenhirCell1_expr of 's * ('s, 'r) _menhir_state * (Dba_types.Expr.t)

and ('s, 'r) _menhir_cell1_initialization_directive = 
  | MenhirCell1_initialization_directive of 's * ('s, 'r) _menhir_state * (Parse_helpers.Initialization.t)

and ('s, 'r) _menhir_cell1_integer = 
  | MenhirCell1_integer of 's * ('s, 'r) _menhir_state * (int)

and ('s, 'r) _menhir_cell1_interval_or_set = 
  | MenhirCell1_interval_or_set of 's * ('s, 'r) _menhir_state * (Parse_helpers.Initialization.rvalue)

and ('s, 'r) _menhir_cell1_kv = 
  | MenhirCell1_kv of 's * ('s, 'r) _menhir_state * (string * Parse_helpers.Message.Value.t)

and ('s, 'r) _menhir_cell1_labelled_instruction = 
  | MenhirCell1_labelled_instruction of 's * ('s, 'r) _menhir_state * (int * Dba_types.Instruction.t)

and ('s, 'r) _menhir_cell1_list_terminated_assignment_SEMICOLON__ = 
  | MenhirCell1_list_terminated_assignment_SEMICOLON__ of 's * ('s, 'r) _menhir_state * (Dba_types.Instruction.t list)

and ('s, 'r) _menhir_cell1_list_terminated_declaration_SEMICOLON__ = 
  | MenhirCell1_list_terminated_declaration_SEMICOLON__ of 's * ('s, 'r) _menhir_state * (Dba_types.LValue.t list)

and ('s, 'r) _menhir_cell1_localized_instruction = 
  | MenhirCell1_localized_instruction of 's * ('s, 'r) _menhir_state * (Dba.address * Dba_types.Instruction.t)

and ('s, 'r) _menhir_cell1_located_directive = 
  | MenhirCell1_located_directive of 's * ('s, 'r) _menhir_state * (Directive.t)

and ('s, 'r) _menhir_cell1_lvalue = 
  | MenhirCell1_lvalue of 's * ('s, 'r) _menhir_state * (Dba_types.LValue.t)

and ('s, 'r) _menhir_cell1_patch = 
  | MenhirCell1_patch of 's * ('s, 'r) _menhir_state * (int * Binstream.t)

and ('s, 'r) _menhir_cell1_static_target = 
  | MenhirCell1_static_target of 's * ('s, 'r) _menhir_state * (int Dba.jump_target)

and ('s, 'r) _menhir_cell1_ALTERNATIVE = 
  | MenhirCell1_ALTERNATIVE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_AND = 
  | MenhirCell1_AND of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_ANNOT = 
  | MenhirCell1_ANNOT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_ASSERT = 
  | MenhirCell1_ASSERT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_ASSUME = 
  | MenhirCell1_ASSUME of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_AT = 
  | MenhirCell1_AT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_BSWAP = 
  | MenhirCell1_BSWAP of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_COMMA = 
  | MenhirCell1_COMMA of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_CONCAT = 
  | MenhirCell1_CONCAT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_CONSEQUENT = 
  | MenhirCell1_CONSEQUENT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_CUT = 
  | MenhirCell1_CUT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_ELSE = 
  | MenhirCell1_ELSE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_ENUMERATE = 
  | MenhirCell1_ENUMERATE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_EQUAL = 
  | MenhirCell1_EQUAL of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_EXTS = 
  | MenhirCell1_EXTS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_EXTU = 
  | MenhirCell1_EXTU of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_FALSE = 
  | MenhirCell1_FALSE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_GES = 
  | MenhirCell1_GES of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_GEU = 
  | MenhirCell1_GEU of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_GOTO = 
  | MenhirCell1_GOTO of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_GTS = 
  | MenhirCell1_GTS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_GTU = 
  | MenhirCell1_GTU of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_IDENT = 
  | MenhirCell1_IDENT of 's * ('s, 'r) _menhir_state * (
# 61 "src/parser/parser.mly"
       (string)
# 1191 "src/parser/parser.ml"
)

and 's _menhir_cell0_IDENT = 
  | MenhirCell0_IDENT of 's * (
# 61 "src/parser/parser.mly"
       (string)
# 1198 "src/parser/parser.ml"
)

and ('s, 'r) _menhir_cell1_IF = 
  | MenhirCell1_IF of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_INFER = 
  | MenhirCell1_INFER of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_INT = 
  | MenhirCell1_INT of 's * ('s, 'r) _menhir_state * (
# 60 "src/parser/parser.mly"
       (string)
# 1211 "src/parser/parser.ml"
)

and 's _menhir_cell0_INT = 
  | MenhirCell0_INT of 's * (
# 60 "src/parser/parser.mly"
       (string)
# 1218 "src/parser/parser.ml"
)

and ('s, 'r) _menhir_cell1_LBRACE = 
  | MenhirCell1_LBRACE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LBRACKET = 
  | MenhirCell1_LBRACKET of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LES = 
  | MenhirCell1_LES of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LEU = 
  | MenhirCell1_LEU of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LPAR = 
  | MenhirCell1_LPAR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LROTATE = 
  | MenhirCell1_LROTATE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LSHIFT = 
  | MenhirCell1_LSHIFT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LTS = 
  | MenhirCell1_LTS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LTU = 
  | MenhirCell1_LTU of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_MAX = 
  | MenhirCell1_MAX of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_MIN = 
  | MenhirCell1_MIN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_MINUS = 
  | MenhirCell1_MINUS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_MODS = 
  | MenhirCell1_MODS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_MODU = 
  | MenhirCell1_MODU of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_NEQ = 
  | MenhirCell1_NEQ of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_NOT = 
  | MenhirCell1_NOT of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_OR = 
  | MenhirCell1_OR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_PLUS = 
  | MenhirCell1_PLUS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_REACH = 
  | MenhirCell1_REACH of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_RROTATE = 
  | MenhirCell1_RROTATE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_RSHIFTS = 
  | MenhirCell1_RSHIFTS of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_RSHIFTU = 
  | MenhirCell1_RSHIFTU of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_SLASH_S = 
  | MenhirCell1_SLASH_S of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_SLASH_U = 
  | MenhirCell1_SLASH_U of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_STAR = 
  | MenhirCell1_STAR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_STAR_S = 
  | MenhirCell1_STAR_S of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_STAR_U = 
  | MenhirCell1_STAR_U of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_STOP = 
  | MenhirCell1_STOP of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_THEN = 
  | MenhirCell1_THEN of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_TMP = 
  | MenhirCell1_TMP of 's * ('s, 'r) _menhir_state * (
# 61 "src/parser/parser.mly"
       (string)
# 1312 "src/parser/parser.ml"
)

and ('s, 'r) _menhir_cell1_TRUE = 
  | MenhirCell1_TRUE of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_VAR = 
  | MenhirCell1_VAR of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_XOR = 
  | MenhirCell1_XOR of 's * ('s, 'r) _menhir_state

and _menhir_box_patchmap = 
  | MenhirBox_patchmap of (Binstream.t Virtual_address.Map.t) [@@unboxed]

and _menhir_box_instruction_eof = 
  | MenhirBox_instruction_eof of (Dba_types.Instruction.t) [@@unboxed]

and _menhir_box_initialization = 
  | MenhirBox_initialization of (Parse_helpers.Initialization.t list) [@@unboxed]

and _menhir_box_expr_eof = 
  | MenhirBox_expr_eof of (Dba_types.Expr.t) [@@unboxed]

and _menhir_box_directives = 
  | MenhirBox_directives of (Directive.t list) [@@unboxed]

and _menhir_box_dhunk_substitutions_eof = 
  | MenhirBox_dhunk_substitutions_eof of ((Loader_utils.Binary_loc.t * Dhunk.t) list) [@@unboxed]

and _menhir_box_dhunk_eof = 
  | MenhirBox_dhunk_eof of (Dhunk.t) [@@unboxed]

and _menhir_box_decoder_msg = 
  | MenhirBox_decoder_msg of ((string * Parse_helpers.Message.Value.t) list *
  (Dba.address * Dba_types.Instruction.t) list) [@@unboxed]

and _menhir_box_decoder_base = 
  | MenhirBox_decoder_base of ((string * Parse_helpers.Message.Value.t) list) [@@unboxed]

and _menhir_box_dba = 
  | MenhirBox_dba of (Dba_types.program) [@@unboxed]

and _menhir_box_body = 
  | MenhirBox_body of ((Dba.address * Dba_types.Instruction.t) list) [@@unboxed]

let _menhir_action_011 =
  fun bv x ->
    let nid = 
# 188 "<standard.mly>"
    ( x )
# 1363 "src/parser/parser.ml"
     in
    (
# 501 "src/parser/parser.mly"
  (
    let id = int_of_string nid in
    let vaddr = Virtual_address.of_bitvector bv in
    let addr = Dba_types.Caddress.create vaddr id in
    incr_address addr;
    addr
 )
# 1374 "src/parser/parser.ml"
     : (Dba.address))

let _menhir_action_012 =
  fun e size ->
    let end_opt = 
# 123 "<standard.mly>"
    ( None )
# 1382 "src/parser/parser.ml"
     in
    (
# 367 "src/parser/parser.mly"
  ( let sz = int_of_string size |> Size.Byte.create in
    let endianness = default_endianness end_opt in
    Dba.LValue.store sz endianness e
  )
# 1390 "src/parser/parser.ml"
     : (Dba_types.LValue.t))

let _menhir_action_013 =
  fun e size ->
    let end_opt =
      let x =
        let x = 
# 359 "src/parser/parser.mly"
           ( Machine.BigEndian )
# 1400 "src/parser/parser.ml"
         in
        
# 188 "<standard.mly>"
    ( x )
# 1405 "src/parser/parser.ml"
        
      in
      
# 126 "<standard.mly>"
    ( Some x )
# 1411 "src/parser/parser.ml"
      
    in
    (
# 367 "src/parser/parser.mly"
  ( let sz = int_of_string size |> Size.Byte.create in
    let endianness = default_endianness end_opt in
    Dba.LValue.store sz endianness e
  )
# 1420 "src/parser/parser.ml"
     : (Dba_types.LValue.t))

let _menhir_action_014 =
  fun e size ->
    let end_opt =
      let x =
        let x = 
# 360 "src/parser/parser.mly"
           ( Machine.LittleEndian )
# 1430 "src/parser/parser.ml"
         in
        
# 188 "<standard.mly>"
    ( x )
# 1435 "src/parser/parser.ml"
        
      in
      
# 126 "<standard.mly>"
    ( Some x )
# 1441 "src/parser/parser.ml"
      
    in
    (
# 367 "src/parser/parser.mly"
  ( let sz = int_of_string size |> Size.Byte.create in
    let endianness = default_endianness end_opt in
    Dba.LValue.store sz endianness e
  )
# 1450 "src/parser/parser.ml"
     : (Dba_types.LValue.t))

let _menhir_action_015 =
  fun assign ->
    (
# 310 "src/parser/parser.mly"
                     ( assign )
# 1458 "src/parser/parser.ml"
     : (Dba_types.Instruction.t))

let _menhir_action_016 =
  fun () ->
    let condition =
      let x = 
# 484 "src/parser/parser.mly"
            ( Dba.Expr.one )
# 1467 "src/parser/parser.ml"
       in
      
# 205 "<standard.mly>"
    ( x )
# 1472 "src/parser/parser.ml"
      
    in
    (
# 312 "src/parser/parser.mly"
  ( Dba.Instr._assert condition unknown_successor )
# 1478 "src/parser/parser.ml"
     : (Dba_types.Instruction.t))

let _menhir_action_017 =
  fun () ->
    let condition =
      let x = 
# 485 "src/parser/parser.mly"
            ( Dba.Expr.zero )
# 1487 "src/parser/parser.ml"
       in
      
# 205 "<standard.mly>"
    ( x )
# 1492 "src/parser/parser.ml"
      
    in
    (
# 312 "src/parser/parser.mly"
  ( Dba.Instr._assert condition unknown_successor )
# 1498 "src/parser/parser.ml"
     : (Dba_types.Instruction.t))

let _menhir_action_018 =
  fun e ->
    let condition =
      let x = 
# 486 "src/parser/parser.mly"
            ( e )
# 1507 "src/parser/parser.ml"
       in
      
# 205 "<standard.mly>"
    ( x )
# 1512 "src/parser/parser.ml"
      
    in
    (
# 312 "src/parser/parser.mly"
  ( Dba.Instr._assert condition unknown_successor )
# 1518 "src/parser/parser.ml"
     : (Dba_types.Instruction.t))

let _menhir_action_019 =
  fun () ->
    let condition =
      let x = 
# 484 "src/parser/parser.mly"
            ( Dba.Expr.one )
# 1527 "src/parser/parser.ml"
       in
      
# 205 "<standard.mly>"
    ( x )
# 1532 "src/parser/parser.ml"
      
    in
    (
# 314 "src/parser/parser.mly"
  ( Dba.Instr.assume condition unknown_successor )
# 1538 "src/parser/parser.ml"
     : (Dba_types.Instruction.t))

let _menhir_action_020 =
  fun () ->
    let condition =
      let x = 
# 485 "src/parser/parser.mly"
            ( Dba.Expr.zero )
# 1547 "src/parser/parser.ml"
       in
      
# 205 "<standard.mly>"
    ( x )
# 1552 "src/parser/parser.ml"
      
    in
    (
# 314 "src/parser/parser.mly"
  ( Dba.Instr.assume condition unknown_successor )
# 1558 "src/parser/parser.ml"
     : (Dba_types.Instruction.t))

let _menhir_action_021 =
  fun e ->
    let condition =
      let x = 
# 486 "src/parser/parser.mly"
            ( e )
# 1567 "src/parser/parser.ml"
       in
      
# 205 "<standard.mly>"
    ( x )
# 1572 "src/parser/parser.ml"
      
    in
    (
# 314 "src/parser/parser.mly"
  ( Dba.Instr.assume condition unknown_successor )
# 1578 "src/parser/parser.ml"
     : (Dba_types.Instruction.t))

let _menhir_action_022 =
  fun id ->
    (
# 287 "src/parser/parser.mly"
               ( id )
# 1586 "src/parser/parser.ml"
     : (string))

let _menhir_action_023 =
  fun f_rv lvalue ->
    (
# 264 "src/parser/parser.mly"
  ( f_rv lvalue unknown_successor)
# 1594 "src/parser/parser.ml"
     : (Dba_types.Instruction.t))

let _menhir_action_024 =
  fun id ->
    (
# 566 "src/parser/parser.mly"
             ( Loader_utils.Binary_loc.name id )
# 1602 "src/parser/parser.ml"
     : (Loader_utils.Binary_loc.t))

let _menhir_action_025 =
  fun bloc n ->
    (
# 568 "src/parser/parser.mly"
    ( Loader_utils.Binary_loc.offset n bloc )
# 1610 "src/parser/parser.ml"
     : (Loader_utils.Binary_loc.t))

let _menhir_action_026 =
  fun bloc n ->
    (
# 570 "src/parser/parser.mly"
    ( Loader_utils.Binary_loc.offset (-n) bloc )
# 1618 "src/parser/parser.ml"
     : (Loader_utils.Binary_loc.t))

let _menhir_action_027 =
  fun address ->
    (
# 575 "src/parser/parser.mly"
    ( Loader_utils.Binary_loc.address @@ Virtual_address.create address )
# 1626 "src/parser/parser.ml"
     : (Loader_utils.Binary_loc.t))

let _menhir_action_028 =
  fun x ->
    let loc = 
# 205 "<standard.mly>"
    ( x )
# 1634 "src/parser/parser.ml"
     in
    (
# 576 "src/parser/parser.mly"
                                                 ( loc )
# 1639 "src/parser/parser.ml"
     : (Loader_utils.Binary_loc.t))

let _menhir_action_029 =
  fun b ->
    (
# 164 "src/parser/parser.mly"
                                     ( b )
# 1647 "src/parser/parser.ml"
     : ((Dba.address * Dba_types.Instruction.t) list))

let _menhir_action_030 =
  fun () ->
    (
# 134 "<standard.mly>"
    ( false )
# 1655 "src/parser/parser.ml"
     : (bool))

let _menhir_action_031 =
  fun () ->
    (
# 137 "<standard.mly>"
    ( true )
# 1663 "src/parser/parser.ml"
     : (bool))

let _menhir_action_032 =
  fun () ->
    (
# 134 "<standard.mly>"
    ( false )
# 1671 "src/parser/parser.ml"
     : (bool))

let _menhir_action_033 =
  fun () ->
    (
# 137 "<standard.mly>"
    ( true )
# 1679 "src/parser/parser.ml"
     : (bool))

let _menhir_action_034 =
  fun entry ->
    (
# 168 "src/parser/parser.mly"
                                          ( entry )
# 1687 "src/parser/parser.ml"
     : (Dba.address))

let _menhir_action_035 =
  fun size value ->
    (
# 392 "src/parser/parser.mly"
  ( Bitvector.create (Z.of_string value) size )
# 1695 "src/parser/parser.ml"
     : (Bitvector.t))

let _menhir_action_036 =
  fun value ->
    (
# 395 "src/parser/parser.mly"
  ( Bitvector.of_string value )
# 1703 "src/parser/parser.ml"
     : (Bitvector.t))

let _menhir_action_037 =
  fun value ->
    (
# 395 "src/parser/parser.mly"
  ( Bitvector.of_string value )
# 1711 "src/parser/parser.ml"
     : (Bitvector.t))

let _menhir_action_038 =
  fun config decls initialization instructions ->
    (
# 127 "src/parser/parser.mly"
   ( Mk.program initialization config decls instructions )
# 1719 "src/parser/parser.ml"
     : (Dba_types.program))

let _menhir_action_039 =
  fun id size tags ->
    (
# 194 "src/parser/parser.mly"
  ( mk_declaration (match tags with None -> Var.Tag.Empty | Some t -> t)  id (int_of_string size) )
# 1727 "src/parser/parser.ml"
     : (Dba_types.LValue.t))

let _menhir_action_040 =
  fun id size ->
    let apply = 
# 187 "src/parser/parser.mly"
            ( mk_declaration Var.Tag.Temp )
# 1735 "src/parser/parser.ml"
     in
    (
# 196 "src/parser/parser.mly"
  ( apply id (int_of_string size) )
# 1740 "src/parser/parser.ml"
     : (Dba_types.LValue.t))

let _menhir_action_041 =
  fun id size ->
    let apply = 
# 188 "src/parser/parser.mly"
            ( mk_declaration Var.Tag.Flag )
# 1748 "src/parser/parser.ml"
     in
    (
# 196 "src/parser/parser.mly"
  ( apply id (int_of_string size) )
# 1753 "src/parser/parser.ml"
     : (Dba_types.LValue.t))

let _menhir_action_042 =
  fun id size ->
    let apply = 
# 189 "src/parser/parser.mly"
            ( mk_declaration Var.Tag.Empty )
# 1761 "src/parser/parser.ml"
     in
    (
# 196 "src/parser/parser.mly"
  ( apply id (int_of_string size) )
# 1766 "src/parser/parser.ml"
     : (Dba_types.LValue.t))

let _menhir_action_043 =
  fun address mnemonic opcode size ->
    (
# 143 "src/parser/parser.mly"
    ( [opcode; mnemonic; address; size;]  (* Actually the order is not important *) )
# 1774 "src/parser/parser.ml"
     : ((string * Parse_helpers.Message.Value.t) list))

let _menhir_action_044 =
  fun address ->
    (
# 145 "src/parser/parser.mly"
    ( [ address ] )
# 1782 "src/parser/parser.ml"
     : ((string * Parse_helpers.Message.Value.t) list))

let _menhir_action_045 =
  fun base instructions ->
    (
# 150 "src/parser/parser.mly"
    ( base, instructions )
# 1790 "src/parser/parser.ml"
     : ((string * Parse_helpers.Message.Value.t) list *
  (Dba.address * Dba_types.Instruction.t) list))

let _menhir_action_046 =
  fun base ->
    (
# 152 "src/parser/parser.mly"
    ( base,
      match base with
      | [ _, Parse_helpers.Message.Value.Int addr; _; _;
	  _, Parse_helpers.Message.Value.Str mnemonic ] ->
	 [ Dba_types.Caddress.of_virtual_address
	     (Virtual_address.of_bigint addr),
	   Dba.Instr.stop (Some (Dba.Unsupported mnemonic)) ]
      | _ -> assert false )
# 1806 "src/parser/parser.ml"
     : ((string * Parse_helpers.Message.Value.t) list *
  (Dba.address * Dba_types.Instruction.t) list))

let _menhir_action_047 =
  fun l ->
    (
# 338 "src/parser/parser.mly"
                                (Dhunk.of_labelled_list l)
# 1815 "src/parser/parser.ml"
     : (Dhunk.t))

let _menhir_action_048 =
  fun l ->
    (
# 342 "src/parser/parser.mly"
               ( l )
# 1823 "src/parser/parser.ml"
     : (Dhunk.t))

let _menhir_action_049 =
  fun addr dh ->
    (
# 347 "src/parser/parser.mly"
  ( (addr, dh))
# 1831 "src/parser/parser.ml"
     : (Loader_utils.Binary_loc.t * Dhunk.t))

let _menhir_action_050 =
  fun l ->
    (
# 351 "src/parser/parser.mly"
                                  (l)
# 1839 "src/parser/parser.ml"
     : ((Loader_utils.Binary_loc.t * Dhunk.t) list))

let _menhir_action_051 =
  fun guard ->
    let times =
      let times = 
# 123 "<standard.mly>"
    ( None )
# 1848 "src/parser/parser.ml"
       in
      
# 531 "src/parser/parser.mly"
                                                ( times )
# 1853 "src/parser/parser.ml"
      
    in
    (
# 548 "src/parser/parser.mly"
    ( let n = Utils.get_opt_or_default 1 times in
      Directive.reach ~n ?guard ~actions:[Directive.Action.Print_model])
# 1860 "src/parser/parser.ml"
     : (loc:Dba_types.Expr.t -> unit -> Directive.t))

let _menhir_action_052 =
  fun guard x ->
    let times =
      let times =
        let x = 
# 205 "<standard.mly>"
    ( x )
# 1870 "src/parser/parser.ml"
         in
        
# 126 "<standard.mly>"
    ( Some x )
# 1875 "src/parser/parser.ml"
        
      in
      
# 531 "src/parser/parser.mly"
                                                ( times )
# 1881 "src/parser/parser.ml"
      
    in
    (
# 548 "src/parser/parser.mly"
    ( let n = Utils.get_opt_or_default 1 times in
      Directive.reach ~n ?guard ~actions:[Directive.Action.Print_model])
# 1888 "src/parser/parser.ml"
     : (loc:Dba_types.Expr.t -> unit -> Directive.t))

let _menhir_action_053 =
  fun () ->
    (
# 551 "src/parser/parser.mly"
    ( Directive.reach_all ~guard:Dba.Expr.one
			  ~actions:[Directive.Action.Print_model] )
# 1897 "src/parser/parser.ml"
     : (loc:Dba_types.Expr.t -> unit -> Directive.t))

let _menhir_action_054 =
  fun e ->
    let times =
      let times = 
# 123 "<standard.mly>"
    ( None )
# 1906 "src/parser/parser.ml"
       in
      
# 531 "src/parser/parser.mly"
                                                ( times )
# 1911 "src/parser/parser.ml"
      
    in
    (
# 554 "src/parser/parser.mly"
   ( let n = Utils.get_opt_or_default 1 times in Directive.enumerate ~n e )
# 1917 "src/parser/parser.ml"
     : (loc:Dba_types.Expr.t -> unit -> Directive.t))

let _menhir_action_055 =
  fun e x ->
    let times =
      let times =
        let x = 
# 205 "<standard.mly>"
    ( x )
# 1927 "src/parser/parser.ml"
         in
        
# 126 "<standard.mly>"
    ( Some x )
# 1932 "src/parser/parser.ml"
        
      in
      
# 531 "src/parser/parser.mly"
                                                ( times )
# 1938 "src/parser/parser.ml"
      
    in
    (
# 554 "src/parser/parser.mly"
   ( let n = Utils.get_opt_or_default 1 times in Directive.enumerate ~n e )
# 1944 "src/parser/parser.ml"
     : (loc:Dba_types.Expr.t -> unit -> Directive.t))

let _menhir_action_056 =
  fun e ->
    (
# 556 "src/parser/parser.mly"
   ( Directive.assume e )
# 1952 "src/parser/parser.ml"
     : (loc:Dba_types.Expr.t -> unit -> Directive.t))

let _menhir_action_057 =
  fun guard ->
    (
# 558 "src/parser/parser.mly"
   ( Directive.cut ?guard )
# 1960 "src/parser/parser.ml"
     : (loc:Dba_types.Expr.t -> unit -> Directive.t))

let _menhir_action_058 =
  fun alternate ->
    let _1 = 
# 537 "src/parser/parser.mly"
        ()
# 1968 "src/parser/parser.ml"
     in
    (
# 560 "src/parser/parser.mly"
   ( Directive.choose_consequent ~alternate )
# 1973 "src/parser/parser.ml"
     : (loc:Dba_types.Expr.t -> unit -> Directive.t))

let _menhir_action_059 =
  fun alternate ->
    let _1 = 
# 537 "src/parser/parser.mly"
        ()
# 1981 "src/parser/parser.ml"
     in
    (
# 560 "src/parser/parser.mly"
   ( Directive.choose_consequent ~alternate )
# 1986 "src/parser/parser.ml"
     : (loc:Dba_types.Expr.t -> unit -> Directive.t))

let _menhir_action_060 =
  fun alternate ->
    let _1 = 
# 537 "src/parser/parser.mly"
        ()
# 1994 "src/parser/parser.ml"
     in
    (
# 560 "src/parser/parser.mly"
   ( Directive.choose_consequent ~alternate )
# 1999 "src/parser/parser.ml"
     : (loc:Dba_types.Expr.t -> unit -> Directive.t))

let _menhir_action_061 =
  fun alternate ->
    let _1 = 
# 542 "src/parser/parser.mly"
        ()
# 2007 "src/parser/parser.ml"
     in
    (
# 562 "src/parser/parser.mly"
   ( Directive.choose_alternative ~alternate )
# 2012 "src/parser/parser.ml"
     : (loc:Dba_types.Expr.t -> unit -> Directive.t))

let _menhir_action_062 =
  fun alternate ->
    let _1 = 
# 542 "src/parser/parser.mly"
        ()
# 2020 "src/parser/parser.ml"
     in
    (
# 562 "src/parser/parser.mly"
   ( Directive.choose_alternative ~alternate )
# 2025 "src/parser/parser.ml"
     : (loc:Dba_types.Expr.t -> unit -> Directive.t))

let _menhir_action_063 =
  fun alternate ->
    let _1 = 
# 542 "src/parser/parser.mly"
        ()
# 2033 "src/parser/parser.ml"
     in
    (
# 562 "src/parser/parser.mly"
   ( Directive.choose_alternative ~alternate )
# 2038 "src/parser/parser.ml"
     : (loc:Dba_types.Expr.t -> unit -> Directive.t))

let _menhir_action_064 =
  fun l ->
    (
# 585 "src/parser/parser.mly"
                                                                ( l )
# 2046 "src/parser/parser.ml"
     : (Directive.t list))

let _menhir_action_065 =
  fun _1 ->
    (
# 268 "src/parser/parser.mly"
    ( _1 )
# 2054 "src/parser/parser.ml"
     : (unit))

let _menhir_action_066 =
  fun _1 ->
    (
# 269 "src/parser/parser.mly"
    ( _1 )
# 2062 "src/parser/parser.ml"
     : (unit))

let _menhir_action_067 =
  fun addr ->
    (
# 172 "src/parser/parser.mly"
                                  ( addr )
# 2070 "src/parser/parser.ml"
     : (Dba.address))

let _menhir_action_068 =
  fun jump ->
    (
# 318 "src/parser/parser.mly"
                         ( jump )
# 2078 "src/parser/parser.ml"
     : (Dba_types.Instruction.t))

let _menhir_action_069 =
  fun next st ->
    let condition = 
# 484 "src/parser/parser.mly"
            ( Dba.Expr.one )
# 2086 "src/parser/parser.ml"
     in
    (
# 320 "src/parser/parser.mly"
  ( Dba.Instr.ite condition st (int_of_string next) )
# 2091 "src/parser/parser.ml"
     : (Dba_types.Instruction.t))

let _menhir_action_070 =
  fun next st ->
    let condition = 
# 485 "src/parser/parser.mly"
            ( Dba.Expr.zero )
# 2099 "src/parser/parser.ml"
     in
    (
# 320 "src/parser/parser.mly"
  ( Dba.Instr.ite condition st (int_of_string next) )
# 2104 "src/parser/parser.ml"
     : (Dba_types.Instruction.t))

let _menhir_action_071 =
  fun e next st ->
    let condition = 
# 486 "src/parser/parser.mly"
            ( e )
# 2112 "src/parser/parser.ml"
     in
    (
# 320 "src/parser/parser.mly"
  ( Dba.Instr.ite condition st (int_of_string next) )
# 2117 "src/parser/parser.ml"
     : (Dba_types.Instruction.t))

let _menhir_action_072 =
  fun sannot ->
    (
# 322 "src/parser/parser.mly"
  ( Dba.Instr.stop sannot )
# 2125 "src/parser/parser.ml"
     : (Dba_types.Instruction.t))

let _menhir_action_073 =
  fun e ->
    (
# 410 "src/parser/parser.mly"
                    ( e )
# 2133 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_074 =
  fun id ->
    let sz_opt = 
# 123 "<standard.mly>"
    ( None )
# 2141 "src/parser/parser.ml"
     in
    (
# 413 "src/parser/parser.mly"
  ( let sz = Utils.get_opt_or_default 1 sz_opt in
    Dba.Expr.var id sz )
# 2147 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_075 =
  fun id x ->
    let sz_opt = 
# 126 "<standard.mly>"
    ( Some x )
# 2155 "src/parser/parser.ml"
     in
    (
# 413 "src/parser/parser.mly"
  ( let sz = Utils.get_opt_or_default 1 sz_opt in
    Dba.Expr.var id sz )
# 2161 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_076 =
  fun id ->
    let sz_opt = 
# 123 "<standard.mly>"
    ( None )
# 2169 "src/parser/parser.ml"
     in
    (
# 417 "src/parser/parser.mly"
  ( let sz = Utils.get_opt_or_default 1 sz_opt in
    Dba.Expr.temporary id ~size:sz )
# 2175 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_077 =
  fun id x ->
    let sz_opt = 
# 126 "<standard.mly>"
    ( Some x )
# 2183 "src/parser/parser.ml"
     in
    (
# 417 "src/parser/parser.mly"
  ( let sz = Utils.get_opt_or_default 1 sz_opt in
    Dba.Expr.temporary id ~size:sz )
# 2189 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_078 =
  fun cst ->
    (
# 421 "src/parser/parser.mly"
  ( Dba.Expr.constant cst )
# 2197 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_079 =
  fun e loff roff ->
    let offs = 
# 400 "src/parser/parser.mly"
  ( int_of_string loff, int_of_string roff )
# 2205 "src/parser/parser.ml"
     in
    (
# 424 "src/parser/parser.mly"
  ( let lo, hi = offs in Dba.Expr.restrict lo hi e )
# 2210 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_080 =
  fun boff e ->
    let offs = 
# 402 "src/parser/parser.mly"
  ( let n = int_of_string boff in n, n)
# 2218 "src/parser/parser.ml"
     in
    (
# 424 "src/parser/parser.mly"
  ( let lo, hi = offs in Dba.Expr.restrict lo hi e )
# 2223 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_081 =
  fun x ->
    let cst = 
# 188 "<standard.mly>"
    ( x )
# 2231 "src/parser/parser.ml"
     in
    (
# 426 "src/parser/parser.mly"
  ( Dba.Expr.constant cst )
# 2236 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_082 =
  fun e size ->
    let end_opt = 
# 123 "<standard.mly>"
    ( None )
# 2244 "src/parser/parser.ml"
     in
    (
# 431 "src/parser/parser.mly"
  ( let size = int_of_string size |> Size.Byte.create in
    let endianness = default_endianness end_opt in
    Dba.Expr.load size endianness e )
# 2251 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_083 =
  fun e size ->
    let end_opt =
      let x =
        let x = 
# 359 "src/parser/parser.mly"
           ( Machine.BigEndian )
# 2261 "src/parser/parser.ml"
         in
        
# 188 "<standard.mly>"
    ( x )
# 2266 "src/parser/parser.ml"
        
      in
      
# 126 "<standard.mly>"
    ( Some x )
# 2272 "src/parser/parser.ml"
      
    in
    (
# 431 "src/parser/parser.mly"
  ( let size = int_of_string size |> Size.Byte.create in
    let endianness = default_endianness end_opt in
    Dba.Expr.load size endianness e )
# 2280 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_084 =
  fun e size ->
    let end_opt =
      let x =
        let x = 
# 360 "src/parser/parser.mly"
           ( Machine.LittleEndian )
# 2290 "src/parser/parser.ml"
         in
        
# 188 "<standard.mly>"
    ( x )
# 2295 "src/parser/parser.ml"
        
      in
      
# 126 "<standard.mly>"
    ( Some x )
# 2301 "src/parser/parser.ml"
      
    in
    (
# 431 "src/parser/parser.mly"
  ( let size = int_of_string size |> Size.Byte.create in
    let endianness = default_endianness end_opt in
    Dba.Expr.load size endianness e )
# 2309 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_085 =
  fun e ->
    (
# 434 "src/parser/parser.mly"
                     ( Dba.Expr.lognot e )
# 2317 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_086 =
  fun e ->
    (
# 435 "src/parser/parser.mly"
                     ( Dba.Expr.uminus e )
# 2325 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_087 =
  fun e size ->
    (
# 437 "src/parser/parser.mly"
   ( Dba.Expr.uext (int_of_string size) e )
# 2333 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_088 =
  fun e size ->
    (
# 439 "src/parser/parser.mly"
   ( Dba.Expr.sext (int_of_string size) e )
# 2341 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_089 =
  fun c else_e then_e ->
    (
# 441 "src/parser/parser.mly"
   ( Dba.Expr.ite c then_e else_e )
# 2349 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_090 =
  fun le re ->
    let bop = 
# 453 "src/parser/parser.mly"
           ( Dba.Binary_op.ModU )
# 2357 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2362 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_091 =
  fun le re ->
    let bop = 
# 454 "src/parser/parser.mly"
           ( Dba.Binary_op.ModS )
# 2370 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2375 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_092 =
  fun le re ->
    let bop = 
# 455 "src/parser/parser.mly"
           ( Dba.Binary_op.Or )
# 2383 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2388 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_093 =
  fun le re ->
    let bop = 
# 456 "src/parser/parser.mly"
           ( Dba.Binary_op.And )
# 2396 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2401 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_094 =
  fun le re ->
    let bop = 
# 457 "src/parser/parser.mly"
           ( Dba.Binary_op.Xor )
# 2409 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2414 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_095 =
  fun le re ->
    let bop = 
# 458 "src/parser/parser.mly"
           ( Dba.Binary_op.Concat )
# 2422 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2427 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_096 =
  fun le re ->
    let bop = 
# 459 "src/parser/parser.mly"
           ( Dba.Binary_op.Eq )
# 2435 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2440 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_097 =
  fun le re ->
    let bop = 
# 460 "src/parser/parser.mly"
           ( Dba.Binary_op.Diff )
# 2448 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2453 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_098 =
  fun le re ->
    let bop = 
# 461 "src/parser/parser.mly"
           ( Dba.Binary_op.LeqU )
# 2461 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2466 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_099 =
  fun le re ->
    let bop = 
# 462 "src/parser/parser.mly"
           ( Dba.Binary_op.LtU  )
# 2474 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2479 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_100 =
  fun le re ->
    let bop = 
# 463 "src/parser/parser.mly"
           ( Dba.Binary_op.GeqU )
# 2487 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2492 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_101 =
  fun le re ->
    let bop = 
# 464 "src/parser/parser.mly"
           ( Dba.Binary_op.GtU )
# 2500 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2505 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_102 =
  fun le re ->
    let bop = 
# 465 "src/parser/parser.mly"
           ( Dba.Binary_op.LeqS )
# 2513 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2518 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_103 =
  fun le re ->
    let bop = 
# 466 "src/parser/parser.mly"
           ( Dba.Binary_op.LtS )
# 2526 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2531 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_104 =
  fun le re ->
    let bop = 
# 467 "src/parser/parser.mly"
           ( Dba.Binary_op.GeqS )
# 2539 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2544 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_105 =
  fun le re ->
    let bop = 
# 468 "src/parser/parser.mly"
           ( Dba.Binary_op.GtS )
# 2552 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2557 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_106 =
  fun le re ->
    let bop = 
# 469 "src/parser/parser.mly"
           ( Dba.Binary_op.Plus )
# 2565 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2570 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_107 =
  fun le re ->
    let bop = 
# 470 "src/parser/parser.mly"
           ( Dba.Binary_op.Minus )
# 2578 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2583 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_108 =
  fun le re ->
    let bop = 
# 472 "src/parser/parser.mly"
           ( Dba.Binary_op.Mult)
# 2591 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2596 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_109 =
  fun le re ->
    let bop = 
# 472 "src/parser/parser.mly"
           ( Dba.Binary_op.Mult)
# 2604 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2609 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_110 =
  fun le re ->
    let bop = 
# 473 "src/parser/parser.mly"
           ( Dba.Binary_op.Mult)
# 2617 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2622 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_111 =
  fun le re ->
    let bop = 
# 474 "src/parser/parser.mly"
           ( Dba.Binary_op.DivU)
# 2630 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2635 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_112 =
  fun le re ->
    let bop = 
# 475 "src/parser/parser.mly"
           ( Dba.Binary_op.DivS)
# 2643 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2648 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_113 =
  fun le re ->
    let bop = 
# 476 "src/parser/parser.mly"
           ( Dba.Binary_op.LShift )
# 2656 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2661 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_114 =
  fun le re ->
    let bop = 
# 477 "src/parser/parser.mly"
           ( Dba.Binary_op.RShiftU)
# 2669 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2674 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_115 =
  fun le re ->
    let bop = 
# 478 "src/parser/parser.mly"
           ( Dba.Binary_op.RShiftS )
# 2682 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2687 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_116 =
  fun le re ->
    let bop = 
# 479 "src/parser/parser.mly"
           ( Dba.Binary_op.LeftRotate )
# 2695 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2700 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_117 =
  fun le re ->
    let bop = 
# 480 "src/parser/parser.mly"
           ( Dba.Binary_op.RightRotate )
# 2708 "src/parser/parser.ml"
     in
    (
# 443 "src/parser/parser.mly"
    ( Dba.Expr.binary bop le re )
# 2713 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_118 =
  fun e1 e2 ->
    (
# 445 "src/parser/parser.mly"
    ( Dba.Expr.ite (Dba.Expr.ult e1 e2) e1 e2 )
# 2721 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_119 =
  fun e1 e2 ->
    (
# 447 "src/parser/parser.mly"
    ( Dba.Expr.ite (Dba.Expr.ult e1 e2) e2 e1 )
# 2729 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_120 =
  fun e ->
    (
# 449 "src/parser/parser.mly"
    ( Dba_utils.Expr.bswap e )
# 2737 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_121 =
  fun e ->
    (
# 406 "src/parser/parser.mly"
              ( e )
# 2745 "src/parser/parser.ml"
     : (Dba_types.Expr.t))

let _menhir_action_122 =
  fun v ->
    (
# 306 "src/parser/parser.mly"
                                                               ( v )
# 2753 "src/parser/parser.ml"
     : (Parse_helpers.Initialization.t list))

let _menhir_action_123 =
  fun a ->
    (
# 291 "src/parser/parser.mly"
                             ( Initialization.from_assignment a )
# 2761 "src/parser/parser.ml"
     : (Parse_helpers.Initialization.t))

let _menhir_action_124 =
  fun v ->
    let _2 = 
# 282 "src/parser/parser.mly"
           ()
# 2769 "src/parser/parser.ml"
     in
    (
# 292 "src/parser/parser.mly"
                             ( Initialization.from_store v )
# 2774 "src/parser/parser.ml"
     : (Parse_helpers.Initialization.t))

let _menhir_action_125 =
  fun v ->
    let _2 = 
# 283 "src/parser/parser.mly"
            ()
# 2782 "src/parser/parser.ml"
     in
    (
# 292 "src/parser/parser.mly"
                             ( Initialization.from_store v )
# 2787 "src/parser/parser.ml"
     : (Parse_helpers.Initialization.t))

let _menhir_action_126 =
  fun is lvalue ->
    let idopt = 
# 123 "<standard.mly>"
    ( None )
# 2795 "src/parser/parser.ml"
     in
    (
# 294 "src/parser/parser.mly"
  ( Initialization.assign ?identifier:idopt lvalue is )
# 2800 "src/parser/parser.ml"
     : (Parse_helpers.Initialization.t))

let _menhir_action_127 =
  fun is lvalue x ->
    let idopt = 
# 126 "<standard.mly>"
    ( Some x )
# 2808 "src/parser/parser.ml"
     in
    (
# 294 "src/parser/parser.mly"
  ( Initialization.assign ?identifier:idopt lvalue is )
# 2813 "src/parser/parser.ml"
     : (Parse_helpers.Initialization.t))

let _menhir_action_128 =
  fun lv ->
    (
# 295 "src/parser/parser.mly"
              ( Initialization.universal lv )
# 2821 "src/parser/parser.ml"
     : (Parse_helpers.Initialization.t))

let _menhir_action_129 =
  fun init uncontrolled ->
    (
# 300 "src/parser/parser.mly"
    ( Initialization.set_control (not uncontrolled) init )
# 2829 "src/parser/parser.ml"
     : (Parse_helpers.Initialization.t))

let _menhir_action_130 =
  fun e ->
    (
# 302 "src/parser/parser.mly"
    ( Initialization.assume e )
# 2837 "src/parser/parser.ml"
     : (Parse_helpers.Initialization.t))

let _menhir_action_131 =
  fun _2 instr ->
    let addr =
      let addr =
        let x = 
# 354 "src/parser/parser.mly"
           ( int_of_string _2 )
# 2847 "src/parser/parser.ml"
         in
        
# 188 "<standard.mly>"
    ( x )
# 2852 "src/parser/parser.ml"
        
      in
      
# 214 "src/parser/parser.mly"
                                           ( addr )
# 2858 "src/parser/parser.ml"
      
    in
    (
# 327 "src/parser/parser.mly"
  ( Dba_types.Instruction.set_successor instr addr )
# 2864 "src/parser/parser.ml"
     : (Dba_types.Instruction.t))

let _menhir_action_132 =
  fun instr ->
    let addr =
      let addr =
        let x = 
# 355 "src/parser/parser.mly"
           ( cur_address () )
# 2874 "src/parser/parser.ml"
         in
        
# 188 "<standard.mly>"
    ( x )
# 2879 "src/parser/parser.ml"
        
      in
      
# 214 "src/parser/parser.mly"
                                           ( addr )
# 2885 "src/parser/parser.ml"
      
    in
    (
# 327 "src/parser/parser.mly"
  ( Dba_types.Instruction.set_successor instr addr )
# 2891 "src/parser/parser.ml"
     : (Dba_types.Instruction.t))

let _menhir_action_133 =
  fun instr ->
    (
# 328 "src/parser/parser.mly"
                              ( instr )
# 2899 "src/parser/parser.ml"
     : (Dba_types.Instruction.t))

let _menhir_action_134 =
  fun l ->
    (
# 332 "src/parser/parser.mly"
                     (l)
# 2907 "src/parser/parser.ml"
     : (Dba_types.Instruction.t))

let _menhir_action_135 =
  fun n ->
    (
# 512 "src/parser/parser.mly"
             ( int_of_string n )
# 2915 "src/parser/parser.ml"
     : (int))

let _menhir_action_136 =
  fun n ->
    (
# 512 "src/parser/parser.mly"
             ( int_of_string n )
# 2923 "src/parser/parser.ml"
     : (int))

let _menhir_action_137 =
  fun n ->
    (
# 512 "src/parser/parser.mly"
             ( int_of_string n )
# 2931 "src/parser/parser.ml"
     : (int))

let _menhir_action_138 =
  fun e1 e2 ->
    (
# 274 "src/parser/parser.mly"
  ( Initialization.Signed_interval(e1,e2) )
# 2939 "src/parser/parser.ml"
     : (Parse_helpers.Initialization.rvalue))

let _menhir_action_139 =
  fun e1 e2 ->
    (
# 276 "src/parser/parser.mly"
  ( Initialization.Unsigned_interval(e1,e2) )
# 2947 "src/parser/parser.ml"
     : (Parse_helpers.Initialization.rvalue))

let _menhir_action_140 =
  fun args ->
    (
# 278 "src/parser/parser.mly"
  ( Initialization.Set args )
# 2955 "src/parser/parser.ml"
     : (Parse_helpers.Initialization.rvalue))

let _menhir_action_141 =
  fun addr ->
    (
# 219 "src/parser/parser.mly"
  ( Dba.Call addr )
# 2963 "src/parser/parser.ml"
     : (Dba.tag))

let _menhir_action_142 =
  fun () ->
    (
# 220 "src/parser/parser.mly"
                               ( Dba.Return )
# 2971 "src/parser/parser.ml"
     : (Dba.tag))

let _menhir_action_143 =
  fun sj ->
    (
# 237 "src/parser/parser.mly"
  ( sj )
# 2979 "src/parser/parser.ml"
     : (Dba_types.Instruction.t))

let _menhir_action_144 =
  fun e tag ->
    (
# 239 "src/parser/parser.mly"
  ( match e with
    | Dba.Expr.Cst bv ->
       let vaddr = Virtual_address.of_bitvector bv in
       let caddr = Dba_types.Caddress.block_start vaddr in
       let target = Dba.Jump_target.outer caddr in
       Dba.Instr.static_jump target ?tag
    | _ ->  Dba.Instr.dynamic_jump e ?tag )
# 2993 "src/parser/parser.ml"
     : (Dba_types.Instruction.t))

let _menhir_action_145 =
  fun key v ->
    (
# 138 "src/parser/parser.mly"
                                    ( key, v )
# 3001 "src/parser/parser.ml"
     : (string * Parse_helpers.Message.Value.t))

let _menhir_action_146 =
  fun instr label ->
    (
# 335 "src/parser/parser.mly"
                                       ( (int_of_string label,instr))
# 3009 "src/parser/parser.ml"
     : (int * Dba_types.Instruction.t))

let _menhir_action_147 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 3017 "src/parser/parser.ml"
     : ((Loader_utils.Binary_loc.t * Dhunk.t) list))

let _menhir_action_148 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 3025 "src/parser/parser.ml"
     : ((Loader_utils.Binary_loc.t * Dhunk.t) list))

let _menhir_action_149 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 3033 "src/parser/parser.ml"
     : ((int * Dba_types.Instruction.t) list))

let _menhir_action_150 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 3041 "src/parser/parser.ml"
     : ((int * Dba_types.Instruction.t) list))

let _menhir_action_151 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 3049 "src/parser/parser.ml"
     : ((Dba.address * Dba_types.Instruction.t) list))

let _menhir_action_152 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 3057 "src/parser/parser.ml"
     : ((Dba.address * Dba_types.Instruction.t) list))

let _menhir_action_153 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 3065 "src/parser/parser.ml"
     : ((int * Binstream.t) list))

let _menhir_action_154 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 3073 "src/parser/parser.ml"
     : ((int * Binstream.t) list))

let _menhir_action_155 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 3081 "src/parser/parser.ml"
     : (Dba_types.Instruction.t list))

let _menhir_action_156 =
  fun x xs ->
    let x = 
# 196 "<standard.mly>"
    ( x )
# 3089 "src/parser/parser.ml"
     in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 3094 "src/parser/parser.ml"
     : (Dba_types.Instruction.t list))

let _menhir_action_157 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 3102 "src/parser/parser.ml"
     : (Dba_types.LValue.t list))

let _menhir_action_158 =
  fun x xs ->
    let x = 
# 196 "<standard.mly>"
    ( x )
# 3110 "src/parser/parser.ml"
     in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 3115 "src/parser/parser.ml"
     : (Dba_types.LValue.t list))

let _menhir_action_159 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 3123 "src/parser/parser.ml"
     : (Parse_helpers.Initialization.t list))

let _menhir_action_160 =
  fun x xs ->
    let x = 
# 196 "<standard.mly>"
    ( x )
# 3131 "src/parser/parser.ml"
     in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 3136 "src/parser/parser.ml"
     : (Parse_helpers.Initialization.t list))

let _menhir_action_161 =
  fun addr instr ->
    (
# 210 "src/parser/parser.mly"
  ( Mk.checked_localized_instruction addr instr )
# 3144 "src/parser/parser.ml"
     : (Dba.address * Dba_types.Instruction.t))

let _menhir_action_162 =
  fun g loc ->
    (
# 581 "src/parser/parser.mly"
   ( g ~loc () )
# 3152 "src/parser/parser.ml"
     : (Directive.t))

let _menhir_action_163 =
  fun id sz_opt ->
    (
# 375 "src/parser/parser.mly"
  ( let bitsize = Utils.get_opt_or_default 1 sz_opt |> Size.Bit.create in
    Dba.LValue.var id ~bitsize )
# 3161 "src/parser/parser.ml"
     : (Dba_types.LValue.t))

let _menhir_action_164 =
  fun id loff roff sz_opt ->
    let offs = 
# 400 "src/parser/parser.mly"
  ( int_of_string loff, int_of_string roff )
# 3169 "src/parser/parser.ml"
     in
    (
# 378 "src/parser/parser.mly"
  ( let bitsize = Utils.get_opt_or_default 1 sz_opt |> Size.Bit.create in
    let lo, hi = offs in Dba.LValue._restrict id bitsize lo hi )
# 3175 "src/parser/parser.ml"
     : (Dba_types.LValue.t))

let _menhir_action_165 =
  fun boff id sz_opt ->
    let offs = 
# 402 "src/parser/parser.mly"
  ( let n = int_of_string boff in n, n)
# 3183 "src/parser/parser.ml"
     in
    (
# 378 "src/parser/parser.mly"
  ( let bitsize = Utils.get_opt_or_default 1 sz_opt |> Size.Bit.create in
    let lo, hi = offs in Dba.LValue._restrict id bitsize lo hi )
# 3189 "src/parser/parser.ml"
     : (Dba_types.LValue.t))

let _menhir_action_166 =
  fun id sz_opt ->
    (
# 381 "src/parser/parser.mly"
  ( let bitsize = Utils.get_opt_or_default 1 sz_opt |> Size.Bit.create in
    Dba.LValue.temporary id bitsize )
# 3198 "src/parser/parser.ml"
     : (Dba_types.LValue.t))

let _menhir_action_167 =
  fun id loff roff sz_opt ->
    let offs = 
# 400 "src/parser/parser.mly"
  ( int_of_string loff, int_of_string roff )
# 3206 "src/parser/parser.ml"
     in
    (
# 384 "src/parser/parser.mly"
    ( let bitsize = Utils.get_opt_or_default 1 sz_opt |> Size.Bit.create in
      let var = Dba.Var.temporary id bitsize in
    let lo, hi = offs in Dba.LValue.restrict var lo hi )
# 3213 "src/parser/parser.ml"
     : (Dba_types.LValue.t))

let _menhir_action_168 =
  fun boff id sz_opt ->
    let offs = 
# 402 "src/parser/parser.mly"
  ( let n = int_of_string boff in n, n)
# 3221 "src/parser/parser.ml"
     in
    (
# 384 "src/parser/parser.mly"
    ( let bitsize = Utils.get_opt_or_default 1 sz_opt |> Size.Bit.create in
      let var = Dba.Var.temporary id bitsize in
    let lo, hi = offs in Dba.LValue.restrict var lo hi )
# 3228 "src/parser/parser.ml"
     : (Dba_types.LValue.t))

let _menhir_action_169 =
  fun v ->
    (
# 387 "src/parser/parser.mly"
                   ( v )
# 3236 "src/parser/parser.ml"
     : (Dba_types.LValue.t))

let _menhir_action_170 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 3244 "src/parser/parser.ml"
     : (int list))

let _menhir_action_171 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 3252 "src/parser/parser.ml"
     : (int list))

let _menhir_action_172 =
  fun s ->
    (
# 516 "src/parser/parser.mly"
             ( Binstream.of_bytes s )
# 3260 "src/parser/parser.ml"
     : (Binstream.t))

let _menhir_action_173 =
  fun x ->
    let integers = 
# 205 "<standard.mly>"
    ( x )
# 3268 "src/parser/parser.ml"
     in
    (
# 518 "src/parser/parser.mly"
   ( Binstream.of_list integers )
# 3273 "src/parser/parser.ml"
     : (Binstream.t))

let _menhir_action_174 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 3281 "src/parser/parser.ml"
     : (Dba.tag option))

let _menhir_action_175 =
  fun x ->
    (
# 114 "<standard.mly>"
    ( Some x )
# 3289 "src/parser/parser.ml"
     : (Dba.tag option))

let _menhir_action_176 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 3297 "src/parser/parser.ml"
     : (Dba_types.Expr.t option))

let _menhir_action_177 =
  fun x ->
    let x = 
# 188 "<standard.mly>"
    ( x )
# 3305 "src/parser/parser.ml"
     in
    (
# 114 "<standard.mly>"
    ( Some x )
# 3310 "src/parser/parser.ml"
     : (Dba_types.Expr.t option))

let _menhir_action_178 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 3318 "src/parser/parser.ml"
     : (int option))

let _menhir_action_179 =
  fun x ->
    (
# 114 "<standard.mly>"
    ( Some x )
# 3326 "src/parser/parser.ml"
     : (int option))

let _menhir_action_180 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 3334 "src/parser/parser.ml"
     : (Dba.state option))

let _menhir_action_181 =
  fun () ->
    let x = 
# 249 "src/parser/parser.mly"
      ( Dba.KO )
# 3342 "src/parser/parser.ml"
     in
    (
# 114 "<standard.mly>"
    ( Some x )
# 3347 "src/parser/parser.ml"
     : (Dba.state option))

let _menhir_action_182 =
  fun () ->
    let x = 
# 250 "src/parser/parser.mly"
      ( Dba.OK )
# 3355 "src/parser/parser.ml"
     in
    (
# 114 "<standard.mly>"
    ( Some x )
# 3360 "src/parser/parser.ml"
     : (Dba.state option))

let _menhir_action_183 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 3368 "src/parser/parser.ml"
     : (Dba.Var.Tag.t option))

let _menhir_action_184 =
  fun () ->
    let x = 
# 200 "src/parser/parser.mly"
           ( Var.Tag.Temp )
# 3376 "src/parser/parser.ml"
     in
    (
# 114 "<standard.mly>"
    ( Some x )
# 3381 "src/parser/parser.ml"
     : (Dba.Var.Tag.t option))

let _menhir_action_185 =
  fun () ->
    let x = 
# 201 "src/parser/parser.mly"
           ( Var.Tag.Flag )
# 3389 "src/parser/parser.ml"
     in
    (
# 114 "<standard.mly>"
    ( Some x )
# 3394 "src/parser/parser.ml"
     : (Dba.Var.Tag.t option))

let _menhir_action_186 =
  fun address opc ->
    (
# 522 "src/parser/parser.mly"
                                           ( address, opc )
# 3402 "src/parser/parser.ml"
     : (int * Binstream.t))

let _menhir_action_187 =
  fun patches ->
    (
# 526 "src/parser/parser.mly"
                            ( mk_patches patches )
# 3410 "src/parser/parser.ml"
     : (Binstream.t Virtual_address.Map.t))

let _menhir_action_188 =
  fun e ->
    (
# 254 "src/parser/parser.mly"
          ( fun lv -> Dba.Instr.assign lv e )
# 3418 "src/parser/parser.ml"
     : (Dba_types.LValue.t -> int -> Dba_types.Instruction.t))

let _menhir_action_189 =
  fun () ->
    (
# 255 "src/parser/parser.mly"
          ( Dba.Instr.undefined )
# 3426 "src/parser/parser.ml"
     : (Dba_types.LValue.t -> int -> Dba_types.Instruction.t))

let _menhir_action_190 =
  fun () ->
    (
# 257 "src/parser/parser.mly"
  ( fun lv -> Dba.Instr.non_deterministic lv )
# 3434 "src/parser/parser.ml"
     : (Dba_types.LValue.t -> int -> Dba_types.Instruction.t))

let _menhir_action_191 =
  fun () ->
    (
# 259 "src/parser/parser.mly"
  ( fun lv -> Dba.Instr.non_deterministic lv )
# 3442 "src/parser/parser.ml"
     : (Dba_types.LValue.t -> int -> Dba_types.Instruction.t))

let _menhir_action_192 =
  fun x ->
    (
# 250 "<standard.mly>"
    ( [ x ] )
# 3450 "src/parser/parser.ml"
     : (Dba_types.Expr.t list))

let _menhir_action_193 =
  fun x xs ->
    (
# 253 "<standard.mly>"
    ( x :: xs )
# 3458 "src/parser/parser.ml"
     : (Dba_types.Expr.t list))

let _menhir_action_194 =
  fun x ->
    (
# 250 "<standard.mly>"
    ( [ x ] )
# 3466 "src/parser/parser.ml"
     : (Directive.t list))

let _menhir_action_195 =
  fun x xs ->
    (
# 253 "<standard.mly>"
    ( x :: xs )
# 3474 "src/parser/parser.ml"
     : (Directive.t list))

let _menhir_action_196 =
  fun size ->
    (
# 205 "src/parser/parser.mly"
                        ( int_of_string size )
# 3482 "src/parser/parser.ml"
     : (int))

let _menhir_action_197 =
  fun t ->
    let tag = 
# 123 "<standard.mly>"
    ( None )
# 3490 "src/parser/parser.ml"
     in
    (
# 232 "src/parser/parser.mly"
  ( Dba.Instr.static_jump t ?tag  )
# 3495 "src/parser/parser.ml"
     : (Dba_types.Instruction.t))

let _menhir_action_198 =
  fun t x ->
    let tag = 
# 126 "<standard.mly>"
    ( Some x )
# 3503 "src/parser/parser.ml"
     in
    (
# 232 "src/parser/parser.mly"
  ( Dba.Instr.static_jump t ?tag  )
# 3508 "src/parser/parser.ml"
     : (Dba_types.Instruction.t))

let _menhir_action_199 =
  fun addr ->
    (
# 225 "src/parser/parser.mly"
                ( Dba.Jump_target.outer addr )
# 3516 "src/parser/parser.ml"
     : (int Dba.jump_target))

let _menhir_action_200 =
  fun label ->
    (
# 226 "src/parser/parser.mly"
                ( Dba.Jump_target.inner (int_of_string label) )
# 3524 "src/parser/parser.ml"
     : (int Dba.jump_target))

let _menhir_action_201 =
  fun _1 ->
    (
# 131 "src/parser/parser.mly"
           ( Message.Value.vint _1)
# 3532 "src/parser/parser.ml"
     : (Parse_helpers.Message.Value.t))

let _menhir_action_202 =
  fun _1 ->
    (
# 132 "src/parser/parser.mly"
           ( Message.Value.vint _1)
# 3540 "src/parser/parser.ml"
     : (Parse_helpers.Message.Value.t))

let _menhir_action_203 =
  fun _1 ->
    (
# 133 "src/parser/parser.mly"
           ( Message.Value.vstr _1)
# 3548 "src/parser/parser.ml"
     : (Parse_helpers.Message.Value.t))

let _menhir_action_204 =
  fun _1 ->
    (
# 134 "src/parser/parser.mly"
           ( Message.Value.vint _1)
# 3556 "src/parser/parser.ml"
     : (Parse_helpers.Message.Value.t))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | ALTERNATE ->
        "ALTERNATE"
    | ALTERNATIVE ->
        "ALTERNATIVE"
    | AND ->
        "AND"
    | ANNOT ->
        "ANNOT"
    | ARROW ->
        "ARROW"
    | ARROWINV ->
        "ARROWINV"
    | AS ->
        "AS"
    | ASSERT ->
        "ASSERT"
    | ASSIGN ->
        "ASSIGN"
    | ASSUME ->
        "ASSUME"
    | AT ->
        "AT"
    | BIN _ ->
        "BIN"
    | BSWAP ->
        "BSWAP"
    | CALLFLAG ->
        "CALLFLAG"
    | COLON ->
        "COLON"
    | COMMA ->
        "COMMA"
    | CONCAT ->
        "CONCAT"
    | CONSEQUENT ->
        "CONSEQUENT"
    | CUT ->
        "CUT"
    | DOT ->
        "DOT"
    | DOTDOT ->
        "DOTDOT"
    | ELSE ->
        "ELSE"
    | ENTRYPOINT ->
        "ENTRYPOINT"
    | ENUMERATE ->
        "ENUMERATE"
    | EOF ->
        "EOF"
    | EQUAL ->
        "EQUAL"
    | EXTS ->
        "EXTS"
    | EXTU ->
        "EXTU"
    | FALSE ->
        "FALSE"
    | FILE ->
        "FILE"
    | FLAG ->
        "FLAG"
    | FLAGTAG ->
        "FLAGTAG"
    | FROM ->
        "FROM"
    | FROMFILE ->
        "FROMFILE"
    | GES ->
        "GES"
    | GEU ->
        "GEU"
    | GOTO ->
        "GOTO"
    | GTS ->
        "GTS"
    | GTU ->
        "GTU"
    | HEXA _ ->
        "HEXA"
    | IDENT _ ->
        "IDENT"
    | IF ->
        "IF"
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
    | MAX ->
        "MAX"
    | MIN ->
        "MIN"
    | MINUS ->
        "MINUS"
    | MODS ->
        "MODS"
    | MODU ->
        "MODU"
    | NEQ ->
        "NEQ"
    | NONDET ->
        "NONDET"
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
    | RBRACKETS ->
        "RBRACKETS"
    | RBRACKETU ->
        "RBRACKETU"
    | REACH ->
        "REACH"
    | REGISTER ->
        "REGISTER"
    | RETURNFLAG ->
        "RETURNFLAG"
    | RPAR ->
        "RPAR"
    | RROTATE ->
        "RROTATE"
    | RSHIFTS ->
        "RSHIFTS"
    | RSHIFTU ->
        "RSHIFTU"
    | SEMICOLON ->
        "SEMICOLON"
    | SKO ->
        "SKO"
    | SLASH_S ->
        "SLASH_S"
    | SLASH_U ->
        "SLASH_U"
    | SOK ->
        "SOK"
    | STAR ->
        "STAR"
    | STAR_S ->
        "STAR_S"
    | STAR_U ->
        "STAR_U"
    | STOP ->
        "STOP"
    | STRING _ ->
        "STRING"
    | SUPER ->
        "SUPER"
    | TEMPORARY ->
        "TEMPORARY"
    | TEMPTAG ->
        "TEMPTAG"
    | THEN ->
        "THEN"
    | TMP _ ->
        "TMP"
    | TRUE ->
        "TRUE"
    | UNCONTROLLED ->
        "UNCONTROLLED"
    | UNDEF ->
        "UNDEF"
    | UNDEFINED ->
        "UNDEFINED"
    | UNIMPLEMENTED ->
        "UNIMPLEMENTED"
    | VAR ->
        "VAR"
    | XOR ->
        "XOR"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37"]
  
  let _menhir_run_392 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_initialization =
    fun _menhir_stack _v ->
      let v = _v in
      let _v = _menhir_action_122 v in
      MenhirBox_initialization _v
  
  let rec _menhir_run_396 : type  ttv_stack. (ttv_stack, _menhir_box_initialization) _menhir_cell1_initialization_directive -> _ -> _menhir_box_initialization =
    fun _menhir_stack _v ->
      let MenhirCell1_initialization_directive (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_160 x xs in
      _menhir_goto_list_terminated_initialization_directive_SEMICOLON__ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_terminated_initialization_directive_SEMICOLON__ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_initialization) _menhir_state -> _menhir_box_initialization =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState395 ->
          _menhir_run_396 _menhir_stack _v
      | MenhirState388 ->
          _menhir_run_392 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let _menhir_goto_decoder_msg : type  ttv_stack. ttv_stack -> _ -> _menhir_box_decoder_msg =
    fun _menhir_stack _v ->
      MenhirBox_decoder_msg _v
  
  let _menhir_run_312 : type  ttv_stack. (ttv_stack, _menhir_box_decoder_msg) _menhir_cell1_decoder_base -> _ -> _menhir_box_decoder_msg =
    fun _menhir_stack _v ->
      let MenhirCell1_decoder_base (_menhir_stack, _, base) = _menhir_stack in
      let instructions = _v in
      let _v = _menhir_action_045 base instructions in
      _menhir_goto_decoder_msg _menhir_stack _v
  
  let _menhir_run_266 : type  ttv_stack. ((ttv_stack _menhir_cell0_config, _menhir_box_dba) _menhir_cell1_list_terminated_declaration_SEMICOLON__, _menhir_box_dba) _menhir_cell1_list_terminated_assignment_SEMICOLON__ -> _ -> _menhir_box_dba =
    fun _menhir_stack _v ->
      let MenhirCell1_list_terminated_assignment_SEMICOLON__ (_menhir_stack, _, initialization) = _menhir_stack in
      let MenhirCell1_list_terminated_declaration_SEMICOLON__ (_menhir_stack, _, decls) = _menhir_stack in
      let MenhirCell0_config (_menhir_stack, config) = _menhir_stack in
      let instructions = _v in
      let _v = _menhir_action_038 config decls initialization instructions in
      MenhirBox_dba _v
  
  let _menhir_run_237 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_body =
    fun _menhir_stack _v ->
      MenhirBox_body _v
  
  let _menhir_goto_body : type  ttv_stack ttv_result. ttv_stack -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState307 ->
          _menhir_run_312 _menhir_stack _v
      | MenhirState265 ->
          _menhir_run_266 _menhir_stack _v
      | MenhirState000 ->
          _menhir_run_237 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let _menhir_run_235 : type  ttv_stack ttv_result. ttv_stack -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _v _menhir_s ->
      let b = _v in
      let _v = _menhir_action_029 b in
      _menhir_goto_body _menhir_stack _v _menhir_s
  
  let _menhir_run_427 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_instruction_eof =
    fun _menhir_stack _v _tok ->
      match (_tok : MenhirBasics.token) with
      | EOF ->
          let l = _v in
          let _v = _menhir_action_134 l in
          MenhirBox_instruction_eof _v
      | _ ->
          _eRR ()
  
  let _menhir_run_443 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_patchmap =
    fun _menhir_stack _v ->
      let patches = _v in
      let _v = _menhir_action_187 patches in
      MenhirBox_patchmap _v
  
  let rec _menhir_run_442 : type  ttv_stack. (ttv_stack, _menhir_box_patchmap) _menhir_cell1_patch -> _ -> _menhir_box_patchmap =
    fun _menhir_stack _v ->
      let MenhirCell1_patch (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_154 x xs in
      _menhir_goto_list_patch_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_patch_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_patchmap) _menhir_state -> _menhir_box_patchmap =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState429 ->
          _menhir_run_443 _menhir_stack _v
      | MenhirState441 ->
          _menhir_run_442 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let _menhir_run_345 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_directives =
    fun _menhir_stack _v ->
      let l = _v in
      let _v = _menhir_action_064 l in
      MenhirBox_directives _v
  
  let rec _menhir_goto_separated_nonempty_list_SEMICOLON_located_directive_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_directives) _menhir_state -> _menhir_box_directives =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState348 ->
          _menhir_run_349 _menhir_stack _v
      | MenhirState344 ->
          _menhir_run_345 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_349 : type  ttv_stack. (ttv_stack, _menhir_box_directives) _menhir_cell1_located_directive -> _ -> _menhir_box_directives =
    fun _menhir_stack _v ->
      let MenhirCell1_located_directive (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_195 x xs in
      _menhir_goto_separated_nonempty_list_SEMICOLON_located_directive_ _menhir_stack _v _menhir_s
  
  let _menhir_run_335 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_dhunk_substitutions_eof =
    fun _menhir_stack _v ->
      let l = _v in
      let _v = _menhir_action_050 l in
      MenhirBox_dhunk_substitutions_eof _v
  
  let rec _menhir_run_340 : type  ttv_stack. (ttv_stack, _menhir_box_dhunk_substitutions_eof) _menhir_cell1_dhunk_substitution -> _ -> _menhir_box_dhunk_substitutions_eof =
    fun _menhir_stack _v ->
      let MenhirCell1_dhunk_substitution (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_148 x xs in
      _menhir_goto_list_dhunk_substitution_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_dhunk_substitution_ : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_dhunk_substitutions_eof) _menhir_state -> _menhir_box_dhunk_substitutions_eof =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState339 ->
          _menhir_run_340 _menhir_stack _v
      | MenhirState323 ->
          _menhir_run_335 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let _menhir_run_321 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_dhunk_eof =
    fun _menhir_stack _v _tok ->
      match (_tok : MenhirBasics.token) with
      | EOF ->
          let l = _v in
          let _v = _menhir_action_048 l in
          MenhirBox_dhunk_eof _v
      | _ ->
          _eRR ()
  
  let rec _menhir_run_014 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_localized_instruction -> _ -> ttv_result =
    fun _menhir_stack _v ->
      let MenhirCell1_localized_instruction (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_152 x xs in
      _menhir_goto_list_localized_instruction_ _menhir_stack _v _menhir_s
  
  and _menhir_goto_list_localized_instruction_ : type  ttv_stack ttv_result. ttv_stack -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _v _menhir_s ->
      match _menhir_s with
      | MenhirState307 ->
          _menhir_run_235 _menhir_stack _v _menhir_s
      | MenhirState265 ->
          _menhir_run_235 _menhir_stack _v _menhir_s
      | MenhirState000 ->
          _menhir_run_235 _menhir_stack _v _menhir_s
      | MenhirState013 ->
          _menhir_run_014 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let rec _menhir_run_001 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState001 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_002 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_INT (_menhir_stack, _menhir_s, _v) in
      let _menhir_s = MenhirState002 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | INFER ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_003 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SUPER ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let size = _v in
              let _v = _menhir_action_196 size in
              _menhir_goto_size_annot _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_size_annot : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState048 ->
          _menhir_run_049 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState038 ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState167 ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState016 ->
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState178 ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState002 ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_049 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_IDENT -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_IDENT (_menhir_stack, _menhir_s, id) = _menhir_stack in
      let x = _v in
      let _v = _menhir_action_075 id x in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_expr : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState412 ->
          _menhir_run_411 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState408 ->
          _menhir_run_411 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState404 ->
          _menhir_run_405 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState400 ->
          _menhir_run_401 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState390 ->
          _menhir_run_391 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState384 ->
          _menhir_run_386 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState378 ->
          _menhir_run_379 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState367 ->
          _menhir_run_368 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState359 ->
          _menhir_run_360 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState344 ->
          _menhir_run_350 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState348 ->
          _menhir_run_350 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState399 ->
          _menhir_run_226 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState221 ->
          _menhir_run_226 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState213 ->
          _menhir_run_218 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState205 ->
          _menhir_run_210 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState191 ->
          _menhir_run_192 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState175 ->
          _menhir_run_187 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState029 ->
          _menhir_run_161 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState040 ->
          _menhir_run_154 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState041 ->
          _menhir_run_153 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState150 ->
          _menhir_run_151 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState043 ->
          _menhir_run_149 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState146 ->
          _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState176 ->
          _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState046 ->
          _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState138 ->
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState136 ->
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState047 ->
          _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState050 ->
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState051 ->
          _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState052 ->
          _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState117 ->
          _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState115 ->
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState113 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState111 ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState109 ->
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState101 ->
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState099 ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState097 ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState095 ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState093 ->
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState091 ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState089 ->
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState087 ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState085 ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState083 ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState365 ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState081 ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState079 ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState077 ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState363 ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState075 ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState073 ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState071 ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState069 ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState067 ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState065 ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState063 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState061 ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState058 ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState056 ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState054 ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_411 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_initialization) _menhir_state -> _ -> _menhir_box_initialization =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | LBRACE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | EQUAL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | COMMA ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          let _menhir_stack = MenhirCell1_COMMA (_menhir_stack, MenhirState411) in
          let _menhir_s = MenhirState412 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TMP _v ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | NOT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MIN ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MAX ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | HEXA _v ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | EXTU ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | EXTS ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSWAP ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BIN _v ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | AT ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState411
      | RBRACE ->
          let x = _v in
          let _v = _menhir_action_192 x in
          _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_056 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_XOR (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState056 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_038 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | INFER ->
          let _menhir_stack = MenhirCell1_TMP (_menhir_stack, _menhir_s, _v) in
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
      | ALTERNATIVE | AND | ANNOT | ASSUME | BIN _ | COMMA | CONCAT | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | OR | PLUS | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U | THEN | XOR ->
          let id = _v in
          let _v = _menhir_action_076 id in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_040 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_NOT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState040 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_041 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_MINUS (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState041 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_042 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_MIN (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          let _menhir_s = MenhirState043 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TMP _v ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | NOT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MIN ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MAX ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | HEXA _v ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | EXTU ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | EXTS ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSWAP ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BIN _v ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | AT ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_044 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_MAX (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          let _menhir_s = MenhirState045 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TMP _v ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | NOT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MIN ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MAX ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | HEXA _v ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | EXTU ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | EXTS ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSWAP ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BIN _v ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | AT ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_046 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState046 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | COMMA ->
          _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_047 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState047 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_048 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | INFER ->
          let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v) in
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState048
      | ALTERNATIVE | AND | ANNOT | ASSUME | BIN _ | COMMA | CONCAT | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | OR | PLUS | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U | THEN | XOR ->
          let id = _v in
          let _v = _menhir_action_074 id in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_007 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let value = _v in
      let _v = _menhir_action_036 value in
      _menhir_goto_constant _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_constant : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState176 ->
          _menhir_run_177 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState140 ->
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState399 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState408 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState412 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState400 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState404 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState390 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState384 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState344 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState348 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState378 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState367 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState365 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState363 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState359 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState221 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState213 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState205 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState191 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState175 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState029 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState040 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState041 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState043 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState150 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState146 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState046 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState047 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState136 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState138 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState050 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState051 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState052 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState054 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState117 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState115 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState113 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState111 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState109 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState101 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState099 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState097 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState095 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState087 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState093 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState091 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState089 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState085 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState083 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState073 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState081 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState075 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState079 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState077 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState071 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState069 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState067 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState065 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState061 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState063 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState056 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState058 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState308 ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState001 ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_177 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_GOTO, ttv_result) _menhir_cell1_LPAR as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          let _menhir_stack = MenhirCell1_constant (_menhir_stack, _menhir_s, _v) in
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer
      | AND | CONCAT | EQUAL | GES | GEU | GTS | GTU | LBRACE | LES | LEU | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | OR | PLUS | RPAR | RROTATE | RSHIFTS | RSHIFTU | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U | XOR ->
          let cst = _v in
          let _v = _menhir_action_078 cst in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_010 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAR, ttv_result) _menhir_cell1_constant -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RPAR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let MenhirCell1_constant (_menhir_stack, _, bv) = _menhir_stack in
              let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
              let x = _v in
              let _v = _menhir_action_011 bv x in
              _menhir_goto_address _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_address : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState240 ->
          _menhir_run_241 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState182 ->
          _menhir_run_183 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState175 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState162 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState156 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState031 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState307 ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState265 ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState000 ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState013 ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_241 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _menhir_box_dba =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let addr = _v in
      let _v = _menhir_action_067 addr in
      let entry = _v in
      let _v = _menhir_action_034 entry in
      let _menhir_stack = MenhirCell0_config (_menhir_stack, _v) in
      match (_tok : MenhirBasics.token) with
      | VAR ->
          _menhir_run_245 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState244
      | TEMPORARY ->
          _menhir_run_252 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState244
      | REGISTER ->
          _menhir_run_256 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState244
      | FLAG ->
          _menhir_run_260 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState244
      | AT | EOF | IDENT _ | LPAR | TMP _ ->
          let _v_0 = _menhir_action_157 () in
          _menhir_run_264 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState244 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_245 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_dba) _menhir_state -> _menhir_box_dba =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_VAR (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | COLON ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | INT _v ->
                  let _menhir_stack = MenhirCell0_INT (_menhir_stack, _v) in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | TEMPTAG ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _v = _menhir_action_184 () in
                      _menhir_goto_option_tags_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                  | FLAGTAG ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let _v = _menhir_action_185 () in
                      _menhir_goto_option_tags_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                  | SEMICOLON ->
                      let _v = _menhir_action_183 () in
                      _menhir_goto_option_tags_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_option_tags_ : type  ttv_stack. (ttv_stack, _menhir_box_dba) _menhir_cell1_VAR _menhir_cell0_IDENT _menhir_cell0_INT -> _ -> _ -> _ -> _ -> _menhir_box_dba =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_INT (_menhir_stack, size) = _menhir_stack in
      let MenhirCell0_IDENT (_menhir_stack, id) = _menhir_stack in
      let MenhirCell1_VAR (_menhir_stack, _menhir_s) = _menhir_stack in
      let tags = _v in
      let _v = _menhir_action_039 id size tags in
      _menhir_goto_declaration _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_declaration : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_dba) _menhir_state -> _ -> _menhir_box_dba =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_declaration (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | VAR ->
              _menhir_run_245 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState271
          | TEMPORARY ->
              _menhir_run_252 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState271
          | REGISTER ->
              _menhir_run_256 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState271
          | FLAG ->
              _menhir_run_260 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState271
          | AT | EOF | IDENT _ | LPAR | TMP _ ->
              let _v_0 = _menhir_action_157 () in
              _menhir_run_272 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_252 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_dba) _menhir_state -> _menhir_box_dba =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | COLON ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | INT _v_0 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (id, size) = (_v, _v_0) in
                  let _v = _menhir_action_040 id size in
                  _menhir_goto_declaration _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_256 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_dba) _menhir_state -> _menhir_box_dba =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | COLON ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | INT _v_0 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (id, size) = (_v, _v_0) in
                  let _v = _menhir_action_042 id size in
                  _menhir_goto_declaration _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_260 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_dba) _menhir_state -> _menhir_box_dba =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | COLON ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | INT _v_0 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (id, size) = (_v, _v_0) in
                  let _v = _menhir_action_041 id size in
                  _menhir_goto_declaration _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_272 : type  ttv_stack. (ttv_stack, _menhir_box_dba) _menhir_cell1_declaration -> _ -> _ -> _ -> _ -> _menhir_box_dba =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_declaration (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_158 x xs in
      _menhir_goto_list_terminated_declaration_SEMICOLON__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_list_terminated_declaration_SEMICOLON__ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_dba) _menhir_state -> _ -> _menhir_box_dba =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState271 ->
          _menhir_run_272 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState244 ->
          _menhir_run_264 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_264 : type  ttv_stack. (ttv_stack _menhir_cell0_config as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_dba) _menhir_state -> _ -> _menhir_box_dba =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_list_terminated_declaration_SEMICOLON__ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TMP _v_0 ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState264
      | IDENT _v_1 ->
          _menhir_run_167 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState264
      | AT ->
          _menhir_run_190 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState264
      | EOF | LPAR ->
          let _v_2 = _menhir_action_155 () in
          _menhir_run_265 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState264 _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_016 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_TMP (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | INFER ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState016
      | ASSIGN | LBRACE | SEMICOLON ->
          let _v_0 = _menhir_action_178 () in
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_018 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_TMP -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | LBRACE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | INT _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | RBRACE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let MenhirCell1_TMP (_menhir_stack, _menhir_s, id) = _menhir_stack in
                  let (sz_opt, boff) = (_v, _v_0) in
                  let _v = _menhir_action_168 boff id sz_opt in
                  _menhir_goto_lvalue _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | COMMA ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | INT _v_1 ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | RBRACE ->
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          let MenhirCell1_TMP (_menhir_stack, _menhir_s, id) = _menhir_stack in
                          let (sz_opt, roff, loff) = (_v, _v_1, _v_0) in
                          let _v = _menhir_action_167 id loff roff sz_opt in
                          _menhir_goto_lvalue _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | ASSIGN | SEMICOLON ->
          let MenhirCell1_TMP (_menhir_stack, _menhir_s, id) = _menhir_stack in
          let sz_opt = _v in
          let _v = _menhir_action_166 id sz_opt in
          _menhir_goto_lvalue _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_lvalue : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState397 ->
          _menhir_run_398 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState425 ->
          _menhir_run_220 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState315 ->
          _menhir_run_220 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState268 ->
          _menhir_run_220 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState264 ->
          _menhir_run_220 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState015 ->
          _menhir_run_220 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_398 : type  ttv_stack. ((ttv_stack, _menhir_box_initialization) _menhir_cell1_boption_UNCONTROLLED_ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_initialization) _menhir_state -> _ -> _menhir_box_initialization =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ASSIGN ->
          let _menhir_stack = MenhirCell1_lvalue (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState399 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | UNDEF ->
              _menhir_run_222 _menhir_stack _menhir_lexbuf _menhir_lexer
          | UNCONTROLLED ->
              _menhir_run_223 _menhir_stack _menhir_lexbuf _menhir_lexer
          | TMP _v ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | NOT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NONDET ->
              _menhir_run_224 _menhir_stack _menhir_lexbuf _menhir_lexer
          | MINUS ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MIN ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MAX ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LBRACKET ->
              let _menhir_stack = MenhirCell1_LBRACKET (_menhir_stack, _menhir_s) in
              let _menhir_s = MenhirState400 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TMP _v ->
                  _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | NOT ->
                  _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | MINUS ->
                  _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | MIN ->
                  _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | MAX ->
                  _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | LPAR ->
                  _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | INT _v ->
                  _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | IF ->
                  _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | HEXA _v ->
                  _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | EXTU ->
                  _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | EXTS ->
                  _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | BSWAP ->
                  _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | BIN _v ->
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | AT ->
                  _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | LBRACE ->
              let _menhir_stack = MenhirCell1_LBRACE (_menhir_stack, _menhir_s) in
              let _menhir_s = MenhirState408 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TMP _v ->
                  _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | NOT ->
                  _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | MINUS ->
                  _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | MIN ->
                  _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | MAX ->
                  _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | LPAR ->
                  _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | INT _v ->
                  _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | IF ->
                  _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | IDENT _v ->
                  _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | HEXA _v ->
                  _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | EXTU ->
                  _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | EXTS ->
                  _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | BSWAP ->
                  _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | BIN _v ->
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | AT ->
                  _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | INT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | HEXA _v ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | EXTU ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | EXTS ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSWAP ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BIN _v ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | AT ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | SEMICOLON ->
          let lv = _v in
          let _v = _menhir_action_128 lv in
          _menhir_goto_initialization_assignment _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_222 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_lvalue -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_189 () in
      _menhir_goto_rvalue _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_goto_rvalue : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_lvalue -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_lvalue (_menhir_stack, _menhir_s, lvalue) = _menhir_stack in
      let f_rv = _v in
      let _v = _menhir_action_023 f_rv lvalue in
      _menhir_goto_assignment _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_assignment : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState397 ->
          _menhir_run_419 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState268 ->
          _menhir_run_267 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState264 ->
          _menhir_run_267 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState425 ->
          _menhir_run_229 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState315 ->
          _menhir_run_229 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState015 ->
          _menhir_run_229 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_419 : type  ttv_stack. (ttv_stack, _menhir_box_initialization) _menhir_cell1_boption_UNCONTROLLED_ -> _ -> _ -> _ -> _ -> _menhir_box_initialization =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let a = _v in
      let _v = _menhir_action_123 a in
      _menhir_goto_initialization_assignment _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_goto_initialization_assignment : type  ttv_stack. (ttv_stack, _menhir_box_initialization) _menhir_cell1_boption_UNCONTROLLED_ -> _ -> _ -> _ -> _ -> _menhir_box_initialization =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_boption_UNCONTROLLED_ (_menhir_stack, _menhir_s, uncontrolled) = _menhir_stack in
      let init = _v in
      let _v = _menhir_action_129 init uncontrolled in
      _menhir_goto_initialization_directive _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_initialization_directive : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_initialization) _menhir_state -> _ -> _menhir_box_initialization =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_initialization_directive (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | UNCONTROLLED ->
              _menhir_run_389 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState395
          | ASSUME ->
              _menhir_run_390 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState395
          | AT | IDENT _ | TMP _ ->
              let _menhir_s = MenhirState395 in
              let _v = _menhir_action_032 () in
              _menhir_goto_boption_UNCONTROLLED_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | EOF ->
              let _v_1 = _menhir_action_159 () in
              _menhir_run_396 _menhir_stack _v_1
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_389 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_initialization) _menhir_state -> _menhir_box_initialization =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_033 () in
      _menhir_goto_boption_UNCONTROLLED_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_boption_UNCONTROLLED_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_initialization) _menhir_state -> _ -> _menhir_box_initialization =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_boption_UNCONTROLLED_ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TMP _v_0 ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState397
      | IDENT _v_1 ->
          _menhir_run_167 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState397
      | AT ->
          _menhir_run_190 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState397
      | _ ->
          _eRR ()
  
  and _menhir_run_167 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_IDENT (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | INFER ->
          _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState167
      | ASSIGN | LBRACE | SEMICOLON ->
          let _v_0 = _menhir_action_178 () in
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_168 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_IDENT -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | LBRACE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | INT _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | RBRACE ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let MenhirCell1_IDENT (_menhir_stack, _menhir_s, id) = _menhir_stack in
                  let (sz_opt, boff) = (_v, _v_0) in
                  let _v = _menhir_action_165 boff id sz_opt in
                  _menhir_goto_lvalue _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | COMMA ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | INT _v_1 ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | RBRACE ->
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          let MenhirCell1_IDENT (_menhir_stack, _menhir_s, id) = _menhir_stack in
                          let (sz_opt, roff, loff) = (_v, _v_1, _v_0) in
                          let _v = _menhir_action_164 id loff roff sz_opt in
                          _menhir_goto_lvalue _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | ASSIGN | SEMICOLON ->
          let MenhirCell1_IDENT (_menhir_stack, _menhir_s, id) = _menhir_stack in
          let sz_opt = _v in
          let _v = _menhir_action_163 id sz_opt in
          _menhir_goto_lvalue _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_190 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_AT (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LBRACKET ->
          let _menhir_s = MenhirState191 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TMP _v ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | NOT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MIN ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MAX ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | HEXA _v ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | EXTU ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | EXTS ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSWAP ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BIN _v ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | AT ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_050 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_EXTU (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState050 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_051 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_EXTS (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState051 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_052 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BSWAP (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState052 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_008 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let value = _v in
      let _v = _menhir_action_037 value in
      _menhir_goto_constant _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_053 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_AT (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LBRACKET ->
          let _menhir_s = MenhirState054 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TMP _v ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | NOT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MIN ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MAX ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | HEXA _v ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | EXTU ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | EXTS ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSWAP ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BIN _v ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | AT ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_390 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_initialization) _menhir_state -> _menhir_box_initialization =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_ASSUME (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState390 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_267 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_dba) _menhir_state -> _ -> _menhir_box_dba =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_assignment (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TMP _v_0 ->
              _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState268
          | IDENT _v_1 ->
              _menhir_run_167 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState268
          | AT ->
              _menhir_run_190 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState268
          | EOF | LPAR ->
              let _v_2 = _menhir_action_155 () in
              _menhir_run_269 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_269 : type  ttv_stack. (ttv_stack, _menhir_box_dba) _menhir_cell1_assignment -> _ -> _ -> _ -> _ -> _menhir_box_dba =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_assignment (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_156 x xs in
      _menhir_goto_list_terminated_assignment_SEMICOLON__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_list_terminated_assignment_SEMICOLON__ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_dba) _menhir_state -> _ -> _menhir_box_dba =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState268 ->
          _menhir_run_269 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState264 ->
          _menhir_run_265 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_265 : type  ttv_stack. ((ttv_stack _menhir_cell0_config, _menhir_box_dba) _menhir_cell1_list_terminated_declaration_SEMICOLON__ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_dba) _menhir_state -> _ -> _menhir_box_dba =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_list_terminated_assignment_SEMICOLON__ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState265
      | EOF ->
          let _v_0 = _menhir_action_151 () in
          _menhir_run_235 _menhir_stack _v_0 MenhirState265
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_229 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let assign = _v in
      let _v = _menhir_action_015 assign in
      _menhir_goto_annotable_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_annotable_instruction : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SEMICOLON ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | GOTO ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | INT _v_0 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let (_2, instr) = (_v_0, _v) in
                  let _v = _menhir_action_131 _2 instr in
                  _menhir_goto_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | BIN _ | EOF | HEXA _ | INFER | INT _ | LPAR ->
              let instr = _v in
              let _v = _menhir_action_132 instr in
              _menhir_goto_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_instruction : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState425 ->
          _menhir_run_427 _menhir_stack _v _tok
      | MenhirState315 ->
          _menhir_run_316 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState015 ->
          _menhir_run_227 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_316 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_INT -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_INT (_menhir_stack, _menhir_s, label) = _menhir_stack in
      let instr = _v in
      let _v = _menhir_action_146 instr label in
      let _menhir_stack = MenhirCell1_labelled_instruction (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | INT _v_0 ->
          _menhir_run_314 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState318
      | BIN _ | EOF | HEXA _ | INFER ->
          let _v_1 = _menhir_action_149 () in
          _menhir_run_319 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_314 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_INT (_menhir_stack, _menhir_s, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | COLON ->
          let _menhir_s = MenhirState315 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TMP _v ->
              _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | STOP ->
              _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IF ->
              _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_167 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | GOTO ->
              _menhir_run_175 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | AT ->
              _menhir_run_190 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ASSUME ->
              _menhir_run_204 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | ASSERT ->
              _menhir_run_212 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_025 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_STOP (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SOK ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_182 () in
          _menhir_goto_option_stop_annot_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | SKO ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_181 () in
          _menhir_goto_option_stop_annot_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | BIN _ | EOF | HEXA _ | INFER | INT _ | LPAR ->
          let _v = _menhir_action_180 () in
          _menhir_goto_option_stop_annot_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_option_stop_annot_ : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_STOP -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_STOP (_menhir_stack, _menhir_s) = _menhir_stack in
      let sannot = _v in
      let _v = _menhir_action_072 sannot in
      _menhir_goto_explicit_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_explicit_instruction : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let instr = _v in
      let _v = _menhir_action_133 instr in
      _menhir_goto_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_029 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState029 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TRUE ->
          let _menhir_stack = MenhirCell1_TRUE (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | GOTO ->
              let _menhir_s = MenhirState031 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LPAR ->
                  _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | INT _v ->
                  _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FALSE ->
          let _menhir_stack = MenhirCell1_FALSE (_menhir_stack, _menhir_s) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | GOTO ->
              let _menhir_s = MenhirState156 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LPAR ->
                  _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | INT _v ->
                  _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_032 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let label = _v in
      let _v = _menhir_action_200 label in
      _menhir_goto_static_target _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_static_target : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState175 ->
          _menhir_run_179 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState162 ->
          _menhir_run_163 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState156 ->
          _menhir_run_157 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState031 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_179 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_GOTO as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | ANNOT ->
          let _menhir_stack = MenhirCell1_static_target (_menhir_stack, _menhir_s, _v) in
          _menhir_run_180 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState179
      | BIN _ | EOF | HEXA _ | INFER | INT _ | LPAR ->
          let t = _v in
          let _v = _menhir_action_197 t in
          _menhir_goto_static_jump _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_180 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | RETURNFLAG ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_142 () in
          _menhir_goto_jump_annotation _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | CALLFLAG ->
          let _menhir_stack = MenhirCell1_ANNOT (_menhir_stack, _menhir_s) in
          let _menhir_s = MenhirState182 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAR ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_jump_annotation : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState187 ->
          _menhir_run_189 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState179 ->
          _menhir_run_184 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_189 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_GOTO, ttv_result) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let x = _v in
      let _v = _menhir_action_175 x in
      _menhir_goto_option_jump_annotation_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_goto_option_jump_annotation_ : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_GOTO, ttv_result) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let tag = _v in
      let _v = _menhir_action_144 e tag in
      _menhir_goto_jump_target _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_goto_jump_target : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_GOTO -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_GOTO (_menhir_stack, _menhir_s) = _menhir_stack in
      let jump = _v in
      let _v = _menhir_action_068 jump in
      _menhir_goto_explicit_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_184 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_GOTO, ttv_result) _menhir_cell1_static_target -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_static_target (_menhir_stack, _, t) = _menhir_stack in
      let x = _v in
      let _v = _menhir_action_198 t x in
      _menhir_goto_static_jump _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_goto_static_jump : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_GOTO -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let sj = _v in
      let _v = _menhir_action_143 sj in
      _menhir_goto_jump_target _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_163 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_IF, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_GOTO -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | ELSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | GOTO ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | INT _v_0 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let MenhirCell1_GOTO (_menhir_stack, _) = _menhir_stack in
                  let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
                  let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
                  let (next, st) = (_v_0, _v) in
                  let _v = _menhir_action_071 e next st in
                  _menhir_goto_explicit_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_157 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_IF, ttv_result) _menhir_cell1_FALSE -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | ELSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | GOTO ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | INT _v_0 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let MenhirCell1_FALSE (_menhir_stack, _) = _menhir_stack in
                  let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
                  let (next, st) = (_v_0, _v) in
                  let _v = _menhir_action_070 next st in
                  _menhir_goto_explicit_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_033 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_IF, ttv_result) _menhir_cell1_TRUE -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | ELSE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | GOTO ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | INT _v_0 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let MenhirCell1_TRUE (_menhir_stack, _) = _menhir_stack in
                  let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
                  let (next, st) = (_v_0, _v) in
                  let _v = _menhir_action_069 next st in
                  _menhir_goto_explicit_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_175 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_GOTO (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState175
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState175
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState175
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState175
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState175
      | LPAR ->
          let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, MenhirState175) in
          let _menhir_s = MenhirState176 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TMP _v ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | NOT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MIN ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MAX ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | HEXA _v ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | EXTU ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | EXTS ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | COMMA ->
              _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSWAP ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BIN _v ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | AT ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | INFER ->
              let _menhir_stack = MenhirCell1_INT (_menhir_stack, MenhirState175, _v) in
              _menhir_run_003 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState178
          | ANNOT | BIN _ | EOF | HEXA _ | INT _ | LPAR ->
              let _v =
                let label = _v in
                _menhir_action_200 label
              in
              _menhir_run_179 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState175 _tok
          | _ ->
              _eRR ())
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState175
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState175
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState175
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState175
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState175
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState175
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState175
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState175
      | _ ->
          _eRR ()
  
  and _menhir_run_140 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAR as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_COMMA (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState140 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_204 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | RPAR ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_019 () in
                  _menhir_goto_annotable_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | TMP _v ->
              let _menhir_stack = MenhirCell1_ASSUME (_menhir_stack, _menhir_s) in
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState205
          | NOT ->
              let _menhir_stack = MenhirCell1_ASSUME (_menhir_stack, _menhir_s) in
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState205
          | MINUS ->
              let _menhir_stack = MenhirCell1_ASSUME (_menhir_stack, _menhir_s) in
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState205
          | MIN ->
              let _menhir_stack = MenhirCell1_ASSUME (_menhir_stack, _menhir_s) in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState205
          | MAX ->
              let _menhir_stack = MenhirCell1_ASSUME (_menhir_stack, _menhir_s) in
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState205
          | LPAR ->
              let _menhir_stack = MenhirCell1_ASSUME (_menhir_stack, _menhir_s) in
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState205
          | INT _v ->
              let _menhir_stack = MenhirCell1_ASSUME (_menhir_stack, _menhir_s) in
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState205
          | IF ->
              let _menhir_stack = MenhirCell1_ASSUME (_menhir_stack, _menhir_s) in
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState205
          | IDENT _v ->
              let _menhir_stack = MenhirCell1_ASSUME (_menhir_stack, _menhir_s) in
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState205
          | HEXA _v ->
              let _menhir_stack = MenhirCell1_ASSUME (_menhir_stack, _menhir_s) in
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState205
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | RPAR ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_020 () in
                  _menhir_goto_annotable_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | EXTU ->
              let _menhir_stack = MenhirCell1_ASSUME (_menhir_stack, _menhir_s) in
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState205
          | EXTS ->
              let _menhir_stack = MenhirCell1_ASSUME (_menhir_stack, _menhir_s) in
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState205
          | BSWAP ->
              let _menhir_stack = MenhirCell1_ASSUME (_menhir_stack, _menhir_s) in
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState205
          | BIN _v ->
              let _menhir_stack = MenhirCell1_ASSUME (_menhir_stack, _menhir_s) in
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState205
          | AT ->
              let _menhir_stack = MenhirCell1_ASSUME (_menhir_stack, _menhir_s) in
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState205
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_212 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TRUE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | RPAR ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_016 () in
                  _menhir_goto_annotable_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | TMP _v ->
              let _menhir_stack = MenhirCell1_ASSERT (_menhir_stack, _menhir_s) in
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState213
          | NOT ->
              let _menhir_stack = MenhirCell1_ASSERT (_menhir_stack, _menhir_s) in
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState213
          | MINUS ->
              let _menhir_stack = MenhirCell1_ASSERT (_menhir_stack, _menhir_s) in
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState213
          | MIN ->
              let _menhir_stack = MenhirCell1_ASSERT (_menhir_stack, _menhir_s) in
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState213
          | MAX ->
              let _menhir_stack = MenhirCell1_ASSERT (_menhir_stack, _menhir_s) in
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState213
          | LPAR ->
              let _menhir_stack = MenhirCell1_ASSERT (_menhir_stack, _menhir_s) in
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState213
          | INT _v ->
              let _menhir_stack = MenhirCell1_ASSERT (_menhir_stack, _menhir_s) in
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState213
          | IF ->
              let _menhir_stack = MenhirCell1_ASSERT (_menhir_stack, _menhir_s) in
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState213
          | IDENT _v ->
              let _menhir_stack = MenhirCell1_ASSERT (_menhir_stack, _menhir_s) in
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState213
          | HEXA _v ->
              let _menhir_stack = MenhirCell1_ASSERT (_menhir_stack, _menhir_s) in
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState213
          | FALSE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | RPAR ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let _v = _menhir_action_017 () in
                  _menhir_goto_annotable_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | EXTU ->
              let _menhir_stack = MenhirCell1_ASSERT (_menhir_stack, _menhir_s) in
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState213
          | EXTS ->
              let _menhir_stack = MenhirCell1_ASSERT (_menhir_stack, _menhir_s) in
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState213
          | BSWAP ->
              let _menhir_stack = MenhirCell1_ASSERT (_menhir_stack, _menhir_s) in
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState213
          | BIN _v ->
              let _menhir_stack = MenhirCell1_ASSERT (_menhir_stack, _menhir_s) in
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState213
          | AT ->
              let _menhir_stack = MenhirCell1_ASSERT (_menhir_stack, _menhir_s) in
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState213
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_319 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_labelled_instruction -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_labelled_instruction (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_150 x xs in
      _menhir_goto_list_labelled_instruction_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_list_labelled_instruction_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState318 ->
          _menhir_run_319 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState342 ->
          _menhir_run_317 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState313 ->
          _menhir_run_317 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_317 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let l = _v in
      let _v = _menhir_action_047 l in
      _menhir_goto_dhunk _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_dhunk : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState342 ->
          _menhir_run_343 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState313 ->
          _menhir_run_321 _menhir_stack _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_343 : type  ttv_stack. (ttv_stack, _menhir_box_dhunk_substitutions_eof) _menhir_cell1_binary_loc -> _ -> _ -> _ -> _ -> _menhir_box_dhunk_substitutions_eof =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_binary_loc (_menhir_stack, _menhir_s, addr) = _menhir_stack in
      let dh = _v in
      let _v = _menhir_action_049 addr dh in
      let _menhir_stack = MenhirCell1_dhunk_substitution (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | INFER ->
          _menhir_run_325 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState339
      | HEXA _v_1 ->
          _menhir_run_330 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState339
      | BIN _v_2 ->
          _menhir_run_331 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState339
      | EOF ->
          let _v_3 = _menhir_action_147 () in
          _menhir_run_340 _menhir_stack _v_3
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_325 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_dhunk_substitutions_eof) _menhir_state -> _menhir_box_dhunk_substitutions_eof =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_INFER (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let id = _v in
          let _v = _menhir_action_024 id in
          _menhir_goto_bin_loc_with_id _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_bin_loc_with_id : type  ttv_stack. (ttv_stack, _menhir_box_dhunk_substitutions_eof) _menhir_cell1_INFER -> _ -> _ -> _ -> _ -> _menhir_box_dhunk_substitutions_eof =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | SUPER ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_INFER (_menhir_stack, _menhir_s) = _menhir_stack in
          let x = _v in
          let _v = _menhir_action_028 x in
          _menhir_goto_binary_loc _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell0_bin_loc_with_id (_menhir_stack, _v) in
          let _menhir_s = MenhirState329 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | INT _v ->
              _menhir_run_324 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | HEXA _v ->
              _menhir_run_330 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | BIN _v ->
              _menhir_run_331 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | MINUS ->
          let _menhir_stack = MenhirCell0_bin_loc_with_id (_menhir_stack, _v) in
          let _menhir_s = MenhirState333 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | INT _v ->
              _menhir_run_324 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | HEXA _v ->
              _menhir_run_330 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | BIN _v ->
              _menhir_run_331 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_binary_loc : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_dhunk_substitutions_eof) _menhir_state -> _ -> _menhir_box_dhunk_substitutions_eof =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_binary_loc (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ARROW ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | INT _v_0 ->
              _menhir_run_314 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState342
          | BIN _ | EOF | HEXA _ | INFER ->
              let _v_1 = _menhir_action_149 () in
              _menhir_run_317 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState342 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_324 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let n = _v in
      let _v = _menhir_action_137 n in
      _menhir_goto_integer _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_integer : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState436 ->
          _menhir_run_436 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState433 ->
          _menhir_run_436 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState430 ->
          _menhir_run_431 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState369 ->
          _menhir_run_370 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState356 ->
          _menhir_run_357 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState339 ->
          _menhir_run_337 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState323 ->
          _menhir_run_337 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState333 ->
          _menhir_run_334 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState329 ->
          _menhir_run_332 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_436 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_patchmap) _menhir_state -> _ -> _menhir_box_patchmap =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | INT _v_0 ->
          let _menhir_stack = MenhirCell1_integer (_menhir_stack, _menhir_s, _v) in
          _menhir_run_324 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState436
      | HEXA _v_1 ->
          let _menhir_stack = MenhirCell1_integer (_menhir_stack, _menhir_s, _v) in
          _menhir_run_330 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState436
      | BIN _v_2 ->
          let _menhir_stack = MenhirCell1_integer (_menhir_stack, _menhir_s, _v) in
          _menhir_run_331 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState436
      | RPAR ->
          let x = _v in
          let _v = _menhir_action_170 x in
          _menhir_goto_nonempty_list_integer_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_330 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let n = _v in
      let _v = _menhir_action_135 n in
      _menhir_goto_integer _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_331 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let n = _v in
      let _v = _menhir_action_136 n in
      _menhir_goto_integer _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_nonempty_list_integer_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_patchmap) _menhir_state -> _menhir_box_patchmap =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState436 ->
          _menhir_run_437 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState433 ->
          _menhir_run_434 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_437 : type  ttv_stack. (ttv_stack, _menhir_box_patchmap) _menhir_cell1_integer -> _ -> _ -> _ -> _menhir_box_patchmap =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_integer (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_171 x xs in
      _menhir_goto_nonempty_list_integer_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_434 : type  ttv_stack. ((ttv_stack, _menhir_box_patchmap) _menhir_cell1_LPAR, _menhir_box_patchmap) _menhir_cell1_integer -> _ -> _ -> _ -> _menhir_box_patchmap =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let x = _v in
      let _v = _menhir_action_173 x in
      _menhir_goto_opcode _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_goto_opcode : type  ttv_stack. ((ttv_stack, _menhir_box_patchmap) _menhir_cell1_LPAR, _menhir_box_patchmap) _menhir_cell1_integer -> _ -> _ -> _ -> _ -> _menhir_box_patchmap =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_integer (_menhir_stack, _, address) = _menhir_stack in
          let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
          let opc = _v in
          let _v = _menhir_action_186 address opc in
          let _menhir_stack = MenhirCell1_patch (_menhir_stack, _menhir_s, _v) in
          (match (_tok : MenhirBasics.token) with
          | LPAR ->
              _menhir_run_430 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState441
          | EOF ->
              let _v_0 = _menhir_action_153 () in
              _menhir_run_442 _menhir_stack _v_0
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_430 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_patchmap) _menhir_state -> _menhir_box_patchmap =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState430 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | INT _v ->
          _menhir_run_324 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_330 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BIN _v ->
          _menhir_run_331 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_431 : type  ttv_stack. ((ttv_stack, _menhir_box_patchmap) _menhir_cell1_LPAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_patchmap) _menhir_state -> _ -> _menhir_box_patchmap =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_integer (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | STRING _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let s = _v_0 in
          let _v = _menhir_action_172 s in
          _menhir_goto_opcode _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | LPAR ->
          let _menhir_s = MenhirState433 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | INT _v ->
              _menhir_run_324 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | HEXA _v ->
              _menhir_run_330 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | BIN _v ->
              _menhir_run_331 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_370 : type  ttv_stack. ((((ttv_stack, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_ENUMERATE, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_LPAR -> _ -> _ -> _ -> _ -> _menhir_box_directives =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAR (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
          let MenhirCell1_ENUMERATE (_menhir_stack, _) = _menhir_stack in
          let x = _v in
          let _v = _menhir_action_055 e x in
          _menhir_goto_directive _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_directive : type  ttv_stack. (ttv_stack, _menhir_box_directives) _menhir_cell1_expr -> _ -> _ -> _ -> _ -> _menhir_box_directives =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_expr (_menhir_stack, _menhir_s, loc) = _menhir_stack in
      let g = _v in
      let _v = _menhir_action_162 g loc in
      match (_tok : MenhirBasics.token) with
      | SEMICOLON ->
          let _menhir_stack = MenhirCell1_located_directive (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState348 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TMP _v ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | NOT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MIN ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MAX ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | HEXA _v ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | EXTU ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | EXTS ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSWAP ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BIN _v ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | AT ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | EOF ->
          let x = _v in
          let _v = _menhir_action_194 x in
          _menhir_goto_separated_nonempty_list_SEMICOLON_located_directive_ _menhir_stack _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_357 : type  ttv_stack. ((((ttv_stack, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_REACH, _menhir_box_directives) _menhir_cell1_LPAR as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_directives) _menhir_state -> _ -> _menhir_box_directives =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_integer (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | RPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IF ->
              _menhir_run_359 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState358
          | EOF | SEMICOLON ->
              let _v_0 = _menhir_action_176 () in
              _menhir_run_361 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_359 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_directives) _menhir_state -> _menhir_box_directives =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_IF (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState359 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_361 : type  ttv_stack. ((((ttv_stack, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_REACH, _menhir_box_directives) _menhir_cell1_LPAR, _menhir_box_directives) _menhir_cell1_integer -> _ -> _ -> _ -> _ -> _menhir_box_directives =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_integer (_menhir_stack, _, x) = _menhir_stack in
      let MenhirCell1_LPAR (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_REACH (_menhir_stack, _) = _menhir_stack in
      let guard = _v in
      let _v = _menhir_action_052 guard x in
      _menhir_goto_directive _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_337 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_dhunk_substitutions_eof) _menhir_state -> _ -> _menhir_box_dhunk_substitutions_eof =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let address = _v in
      let _v = _menhir_action_027 address in
      _menhir_goto_binary_loc _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_334 : type  ttv_stack. (ttv_stack, _menhir_box_dhunk_substitutions_eof) _menhir_cell1_INFER _menhir_cell0_bin_loc_with_id -> _ -> _ -> _ -> _ -> _menhir_box_dhunk_substitutions_eof =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_bin_loc_with_id (_menhir_stack, bloc) = _menhir_stack in
      let n = _v in
      let _v = _menhir_action_026 bloc n in
      _menhir_goto_bin_loc_with_id _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_332 : type  ttv_stack. (ttv_stack, _menhir_box_dhunk_substitutions_eof) _menhir_cell1_INFER _menhir_cell0_bin_loc_with_id -> _ -> _ -> _ -> _ -> _menhir_box_dhunk_substitutions_eof =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_bin_loc_with_id (_menhir_stack, bloc) = _menhir_stack in
      let n = _v in
      let _v = _menhir_action_025 bloc n in
      _menhir_goto_bin_loc_with_id _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_227 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_address -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_address (_menhir_stack, _menhir_s, addr) = _menhir_stack in
      let instr = _v in
      let _v = _menhir_action_161 addr instr in
      let _menhir_stack = MenhirCell1_localized_instruction (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState013
      | EOF ->
          let _v_0 = _menhir_action_151 () in
          _menhir_run_014 _menhir_stack _v_0
      | _ ->
          _eRR ()
  
  and _menhir_run_223 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_lvalue -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_191 () in
      _menhir_goto_rvalue _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_224 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_lvalue -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_190 () in
      _menhir_goto_rvalue _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_220 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_lvalue (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | ASSIGN ->
          let _menhir_s = MenhirState221 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | UNDEF ->
              _menhir_run_222 _menhir_stack _menhir_lexbuf _menhir_lexer
          | UNCONTROLLED ->
              _menhir_run_223 _menhir_stack _menhir_lexbuf _menhir_lexer
          | TMP _v ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | NOT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | NONDET ->
              _menhir_run_224 _menhir_stack _menhir_lexbuf _menhir_lexer
          | MINUS ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MIN ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MAX ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | HEXA _v ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | EXTU ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | EXTS ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSWAP ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BIN _v ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | AT ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_183 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_ANNOT -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_ANNOT (_menhir_stack, _menhir_s) = _menhir_stack in
      let addr = _v in
      let _v = _menhir_action_141 addr in
      _menhir_goto_jump_annotation _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_037 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let addr = _v in
      let _v = _menhir_action_199 addr in
      _menhir_goto_static_target _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_015 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_address (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TMP _v_0 ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState015
      | STOP ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
      | IF ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
      | IDENT _v_1 ->
          _menhir_run_167 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState015
      | GOTO ->
          _menhir_run_175 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
      | AT ->
          _menhir_run_190 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
      | ASSUME ->
          _menhir_run_204 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
      | ASSERT ->
          _menhir_run_212 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState015
      | _ ->
          _eRR ()
  
  and _menhir_run_141 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAR, ttv_result) _menhir_cell1_COMMA -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_COMMA (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
          let x = _v in
          let _v = _menhir_action_081 x in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_060 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let cst = _v in
      let _v = _menhir_action_078 cst in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_009 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAR as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_constant (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | COMMA ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_061 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_STAR_U (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState061 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_065 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_STAR_S (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState065 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_067 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_STAR (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState067 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_069 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_SLASH_U (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState069 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_071 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_SLASH_S (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState071 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_073 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_RSHIFTU (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState073 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_083 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_RSHIFTS (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState083 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_085 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_RROTATE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState085 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_075 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_PLUS (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState075 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_063 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_OR (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState063 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_087 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_NEQ (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState087 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_077 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_MODU (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState077 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_079 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_MODS (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState079 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_081 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_MINUS (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState081 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_095 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LTU (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState095 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_097 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LTS (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState097 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_089 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LSHIFT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState089 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_091 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LROTATE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState091 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_099 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LEU (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState099 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_101 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LES (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState101 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_103 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_expr -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | INT _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RBRACE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let MenhirCell1_expr (_menhir_stack, _menhir_s, e) = _menhir_stack in
              let boff = _v in
              let _v = _menhir_action_080 boff e in
              _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
          | COMMA ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | INT _v_0 ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | RBRACE ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let MenhirCell1_expr (_menhir_stack, _menhir_s, e) = _menhir_stack in
                      let (roff, loff) = (_v_0, _v) in
                      let _v = _menhir_action_079 e loff roff in
                      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_109 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_GTU (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState109 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_111 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_GTS (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState111 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_113 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_GEU (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState113 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_115 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_GES (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState115 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_117 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_EQUAL (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState117 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_093 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_CONCAT (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState093 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_058 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_AND (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState058 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_separated_nonempty_list_COMMA_expr_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_initialization) _menhir_state -> _menhir_box_initialization =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState412 ->
          _menhir_run_413 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState408 ->
          _menhir_run_409 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_413 : type  ttv_stack. ((ttv_stack, _menhir_box_initialization) _menhir_cell1_expr, _menhir_box_initialization) _menhir_cell1_COMMA -> _ -> _ -> _ -> _menhir_box_initialization =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_COMMA (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_193 x xs in
      _menhir_goto_separated_nonempty_list_COMMA_expr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_409 : type  ttv_stack. (((ttv_stack, _menhir_box_initialization) _menhir_cell1_boption_UNCONTROLLED_, _menhir_box_initialization) _menhir_cell1_lvalue, _menhir_box_initialization) _menhir_cell1_LBRACE -> _ -> _ -> _ -> _menhir_box_initialization =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LBRACE (_menhir_stack, _menhir_s) = _menhir_stack in
      let args = _v in
      let _v = _menhir_action_140 args in
      _menhir_goto_interval_or_set _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_interval_or_set : type  ttv_stack. (((ttv_stack, _menhir_box_initialization) _menhir_cell1_boption_UNCONTROLLED_, _menhir_box_initialization) _menhir_cell1_lvalue as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_initialization) _menhir_state -> _ -> _menhir_box_initialization =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | AS ->
          let _menhir_stack = MenhirCell1_interval_or_set (_menhir_stack, _menhir_s, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let id = _v_0 in
              let _v = _menhir_action_022 id in
              let MenhirCell1_interval_or_set (_menhir_stack, _, is) = _menhir_stack in
              let MenhirCell1_lvalue (_menhir_stack, _, lvalue) = _menhir_stack in
              let x = _v in
              let _v = _menhir_action_127 is lvalue x in
              _menhir_goto_initialization_assignment _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | SEMICOLON ->
          let MenhirCell1_lvalue (_menhir_stack, _, lvalue) = _menhir_stack in
          let is = _v in
          let _v = _menhir_action_126 is lvalue in
          _menhir_goto_initialization_assignment _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_405 : type  ttv_stack. ((((((ttv_stack, _menhir_box_initialization) _menhir_cell1_boption_UNCONTROLLED_, _menhir_box_initialization) _menhir_cell1_lvalue, _menhir_box_initialization) _menhir_cell1_LBRACKET, _menhir_box_initialization) _menhir_cell1_expr, _menhir_box_initialization) _menhir_cell1_either_DOTDOT_COMMA_ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_initialization) _menhir_state -> _ -> _menhir_box_initialization =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | RBRACKETU ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_either_DOTDOT_COMMA_ (_menhir_stack, _, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e1) = _menhir_stack in
          let MenhirCell1_LBRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_139 e1 e2 in
          _menhir_goto_interval_or_set _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | RBRACKETS ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_either_DOTDOT_COMMA_ (_menhir_stack, _, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e1) = _menhir_stack in
          let MenhirCell1_LBRACKET (_menhir_stack, _menhir_s) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_138 e1 e2 in
          _menhir_goto_interval_or_set _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | LBRACE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | EQUAL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState405
      | _ ->
          _eRR ()
  
  and _menhir_run_401 : type  ttv_stack. ((((ttv_stack, _menhir_box_initialization) _menhir_cell1_boption_UNCONTROLLED_, _menhir_box_initialization) _menhir_cell1_lvalue, _menhir_box_initialization) _menhir_cell1_LBRACKET as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_initialization) _menhir_state -> _ -> _menhir_box_initialization =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | XOR ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | STAR_U ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | STAR_S ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | STAR ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | SLASH_U ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | SLASH_S ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | RSHIFTU ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | RSHIFTS ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | RROTATE ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | PLUS ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | OR ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | NEQ ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | MODU ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | MODS ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | MINUS ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | LTU ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | LTS ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | LSHIFT ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | LROTATE ->
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | LEU ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | LES ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | LBRACE ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTU ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | GTS ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | GEU ->
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | GES ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | EQUAL ->
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | DOTDOT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_menhir_s, _1) = (MenhirState401, ()) in
          let _v = _menhir_action_065 _1 in
          _menhir_goto_either_DOTDOT_COMMA_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | CONCAT ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | COMMA ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let (_menhir_s, _1) = (MenhirState401, ()) in
          let _v = _menhir_action_066 _1 in
          _menhir_goto_either_DOTDOT_COMMA_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | AND ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState401
      | _ ->
          _eRR ()
  
  and _menhir_goto_either_DOTDOT_COMMA_ : type  ttv_stack. (((((ttv_stack, _menhir_box_initialization) _menhir_cell1_boption_UNCONTROLLED_, _menhir_box_initialization) _menhir_cell1_lvalue, _menhir_box_initialization) _menhir_cell1_LBRACKET, _menhir_box_initialization) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_initialization) _menhir_state -> _ -> _menhir_box_initialization =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_either_DOTDOT_COMMA_ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | TMP _v_0 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState404
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState404
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState404
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState404
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState404
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState404
      | INT _v_1 ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState404
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState404
      | IDENT _v_2 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState404
      | HEXA _v_3 ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState404
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState404
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState404
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState404
      | BIN _v_4 ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState404
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState404
      | _ ->
          _eRR ()
  
  and _menhir_run_391 : type  ttv_stack. ((ttv_stack, _menhir_box_initialization) _menhir_cell1_ASSUME as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_initialization) _menhir_state -> _ -> _menhir_box_initialization =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | LBRACE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | EQUAL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState391
      | SEMICOLON ->
          let MenhirCell1_ASSUME (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_130 e in
          _menhir_goto_initialization_directive _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_386 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_expr_eof) _menhir_state -> _ -> _menhir_box_expr_eof =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | LBRACE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | EQUAL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | EOF ->
          let e = _v in
          let _v = _menhir_action_121 e in
          MenhirBox_expr_eof _v
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState386
      | _ ->
          _eRR ()
  
  and _menhir_run_379 : type  ttv_stack. (((ttv_stack, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_ASSUME as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_directives) _menhir_state -> _ -> _menhir_box_directives =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | LBRACE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | EQUAL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState379
      | EOF | SEMICOLON ->
          let MenhirCell1_ASSUME (_menhir_stack, _) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_056 e in
          _menhir_goto_directive _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_368 : type  ttv_stack. (((ttv_stack, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_ENUMERATE as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_directives) _menhir_state -> _ -> _menhir_box_directives =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | LPAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, MenhirState368) in
          let _menhir_s = MenhirState369 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | INT _v ->
              _menhir_run_324 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | HEXA _v ->
              _menhir_run_330 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | BIN _v ->
              _menhir_run_331 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | LBRACE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | EQUAL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState368
      | EOF | SEMICOLON ->
          let MenhirCell1_ENUMERATE (_menhir_stack, _) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_054 e in
          _menhir_goto_directive _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_360 : type  ttv_stack. ((ttv_stack, _menhir_box_directives) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_directives) _menhir_state -> _ -> _menhir_box_directives =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | LBRACE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | EQUAL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState360
      | EOF | SEMICOLON ->
          let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
          let x = _v in
          let _v = _menhir_action_177 x in
          _menhir_goto_option_preceded_IF_expr__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_option_preceded_IF_expr__ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_directives) _menhir_state -> _ -> _menhir_box_directives =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState374 ->
          _menhir_run_375 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState354 ->
          _menhir_run_362 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState358 ->
          _menhir_run_361 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_375 : type  ttv_stack. ((ttv_stack, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_CUT -> _ -> _ -> _ -> _ -> _menhir_box_directives =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_CUT (_menhir_stack, _) = _menhir_stack in
      let guard = _v in
      let _v = _menhir_action_057 guard in
      _menhir_goto_directive _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_362 : type  ttv_stack. ((ttv_stack, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_REACH -> _ -> _ -> _ -> _ -> _menhir_box_directives =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_REACH (_menhir_stack, _) = _menhir_stack in
      let guard = _v in
      let _v = _menhir_action_051 guard in
      _menhir_goto_directive _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_350 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_directives) _menhir_state -> _ -> _menhir_box_directives =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | XOR ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState350
      | THEN ->
          let _menhir_stack = MenhirCell1_THEN (_menhir_stack, MenhirState350) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | ALTERNATE ->
              _menhir_run_352 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState351
          | EOF | SEMICOLON ->
              let _v_0 = _menhir_action_030 () in
              _menhir_run_353 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 _tok
          | _ ->
              _eRR ())
      | STAR_U ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState350
      | STAR_S ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState350
      | STAR ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState350
      | SLASH_U ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState350
      | SLASH_S ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState350
      | RSHIFTU ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState350
      | RSHIFTS ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState350
      | RROTATE ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState350
      | REACH ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STAR ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_053 () in
              _menhir_goto_directive _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | LPAR ->
              let _menhir_stack = MenhirCell1_REACH (_menhir_stack, MenhirState350) in
              let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, MenhirState354) in
              let _menhir_s = MenhirState356 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | INT _v ->
                  _menhir_run_324 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | HEXA _v ->
                  _menhir_run_330 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | BIN _v ->
                  _menhir_run_331 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | IF ->
              let _menhir_stack = MenhirCell1_REACH (_menhir_stack, MenhirState350) in
              _menhir_run_359 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState354
          | EOF | SEMICOLON ->
              let _menhir_stack = MenhirCell1_REACH (_menhir_stack, MenhirState350) in
              let _v_5 = _menhir_action_176 () in
              _menhir_run_362 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 _tok
          | _ ->
              _eRR ())
      | PLUS ->
          let _menhir_stack = MenhirCell1_PLUS (_menhir_stack, MenhirState350) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TMP _v_6 ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v_6 MenhirState363
          | NOT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState363
          | MINUS ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState363
          | MIN ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState363
          | MAX ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState363
          | LPAR ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState363
          | INT _v_7 ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_7 MenhirState363
          | IF ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState363
          | IDENT _v_8 ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v_8 MenhirState363
          | HEXA _v_9 ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v_9 MenhirState363
          | EXTU ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState363
          | EXTS ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState363
          | BSWAP ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState363
          | BIN _v_10 ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v_10 MenhirState363
          | AT ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState363
          | ALTERNATE ->
              _menhir_run_352 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState363
          | EOF | SEMICOLON ->
              let _v_11 = _menhir_action_030 () in
              _menhir_run_364 _menhir_stack _menhir_lexbuf _menhir_lexer _v_11 _tok
          | _ ->
              _eRR ())
      | OR ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState350
      | NEQ ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState350
      | MODU ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState350
      | MODS ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState350
      | MINUS ->
          let _menhir_stack = MenhirCell1_MINUS (_menhir_stack, MenhirState350) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TMP _v_12 ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v_12 MenhirState365
          | NOT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState365
          | MINUS ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState365
          | MIN ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState365
          | MAX ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState365
          | LPAR ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState365
          | INT _v_13 ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_13 MenhirState365
          | IF ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState365
          | IDENT _v_14 ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v_14 MenhirState365
          | HEXA _v_15 ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v_15 MenhirState365
          | EXTU ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState365
          | EXTS ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState365
          | BSWAP ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState365
          | BIN _v_16 ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v_16 MenhirState365
          | AT ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState365
          | ALTERNATE ->
              _menhir_run_352 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState365
          | EOF | SEMICOLON ->
              let _v_17 = _menhir_action_030 () in
              _menhir_run_366 _menhir_stack _menhir_lexbuf _menhir_lexer _v_17 _tok
          | _ ->
              _eRR ())
      | LTU ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState350
      | LTS ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState350
      | LSHIFT ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState350
      | LROTATE ->
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState350
      | LEU ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState350
      | LES ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState350
      | LBRACE ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTU ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState350
      | GTS ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState350
      | GEU ->
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState350
      | GES ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState350
      | EQUAL ->
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState350
      | ENUMERATE ->
          let _menhir_stack = MenhirCell1_ENUMERATE (_menhir_stack, MenhirState350) in
          let _menhir_s = MenhirState367 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TMP _v ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | NOT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MIN ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MAX ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | HEXA _v ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | EXTU ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | EXTS ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSWAP ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BIN _v ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | AT ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | ELSE ->
          let _menhir_stack = MenhirCell1_ELSE (_menhir_stack, MenhirState350) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | ALTERNATE ->
              _menhir_run_352 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState372
          | EOF | SEMICOLON ->
              let _v_23 = _menhir_action_030 () in
              _menhir_run_373 _menhir_stack _menhir_lexbuf _menhir_lexer _v_23 _tok
          | _ ->
              _eRR ())
      | CUT ->
          let _menhir_stack = MenhirCell1_CUT (_menhir_stack, MenhirState350) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IF ->
              _menhir_run_359 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState374
          | EOF | SEMICOLON ->
              let _v_24 = _menhir_action_176 () in
              _menhir_run_375 _menhir_stack _menhir_lexbuf _menhir_lexer _v_24 _tok
          | _ ->
              _eRR ())
      | CONSEQUENT ->
          let _menhir_stack = MenhirCell1_CONSEQUENT (_menhir_stack, MenhirState350) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | ALTERNATE ->
              _menhir_run_352 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState376
          | EOF | SEMICOLON ->
              let _v_25 = _menhir_action_030 () in
              _menhir_run_377 _menhir_stack _menhir_lexbuf _menhir_lexer _v_25 _tok
          | _ ->
              _eRR ())
      | CONCAT ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState350
      | ASSUME ->
          let _menhir_stack = MenhirCell1_ASSUME (_menhir_stack, MenhirState350) in
          let _menhir_s = MenhirState378 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TMP _v ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | NOT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MIN ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MAX ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | HEXA _v ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | EXTU ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | EXTS ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSWAP ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BIN _v ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | AT ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | AND ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState350
      | ALTERNATIVE ->
          let _menhir_stack = MenhirCell1_ALTERNATIVE (_menhir_stack, MenhirState350) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | ALTERNATE ->
              _menhir_run_352 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState380
          | EOF | SEMICOLON ->
              let _v_31 = _menhir_action_030 () in
              _menhir_run_381 _menhir_stack _menhir_lexbuf _menhir_lexer _v_31 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_352 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_directives) _menhir_state -> _menhir_box_directives =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_031 () in
      _menhir_goto_boption_ALTERNATE_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_boption_ALTERNATE_ : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_directives) _menhir_state -> _ -> _menhir_box_directives =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState380 ->
          _menhir_run_381 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState376 ->
          _menhir_run_377 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState372 ->
          _menhir_run_373 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState365 ->
          _menhir_run_366 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState363 ->
          _menhir_run_364 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState351 ->
          _menhir_run_353 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_381 : type  ttv_stack. ((ttv_stack, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_ALTERNATIVE -> _ -> _ -> _ -> _ -> _menhir_box_directives =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_ALTERNATIVE (_menhir_stack, _) = _menhir_stack in
      let alternate = _v in
      let _v = _menhir_action_062 alternate in
      _menhir_goto_directive _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_377 : type  ttv_stack. ((ttv_stack, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_CONSEQUENT -> _ -> _ -> _ -> _ -> _menhir_box_directives =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_CONSEQUENT (_menhir_stack, _) = _menhir_stack in
      let alternate = _v in
      let _v = _menhir_action_059 alternate in
      _menhir_goto_directive _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_373 : type  ttv_stack. ((ttv_stack, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_ELSE -> _ -> _ -> _ -> _ -> _menhir_box_directives =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_ELSE (_menhir_stack, _) = _menhir_stack in
      let alternate = _v in
      let _v = _menhir_action_063 alternate in
      _menhir_goto_directive _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_366 : type  ttv_stack. ((ttv_stack, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_MINUS -> _ -> _ -> _ -> _ -> _menhir_box_directives =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_MINUS (_menhir_stack, _) = _menhir_stack in
      let alternate = _v in
      let _v = _menhir_action_061 alternate in
      _menhir_goto_directive _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_364 : type  ttv_stack. ((ttv_stack, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_PLUS -> _ -> _ -> _ -> _ -> _menhir_box_directives =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_PLUS (_menhir_stack, _) = _menhir_stack in
      let alternate = _v in
      let _v = _menhir_action_058 alternate in
      _menhir_goto_directive _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_353 : type  ttv_stack. ((ttv_stack, _menhir_box_directives) _menhir_cell1_expr, _menhir_box_directives) _menhir_cell1_THEN -> _ -> _ -> _ -> _ -> _menhir_box_directives =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_THEN (_menhir_stack, _) = _menhir_stack in
      let alternate = _v in
      let _v = _menhir_action_060 alternate in
      _menhir_goto_directive _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_226 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_lvalue as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | LBRACE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | EQUAL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState226
      | SEMICOLON ->
          let e = _v in
          let _v = _menhir_action_188 e in
          _menhir_goto_rvalue _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_218 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_ASSERT as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | RPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_ASSERT (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_018 e in
          _menhir_goto_annotable_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | LBRACE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | EQUAL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | _ ->
          _eRR ()
  
  and _menhir_run_210 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_ASSUME as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | RPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_ASSUME (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_021 e in
          _menhir_goto_annotable_instruction _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | LBRACE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | EQUAL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | _ ->
          _eRR ()
  
  and _menhir_run_192 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_AT as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | LBRACE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | EQUAL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | COMMA ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | INT _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | RBRACKET ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let MenhirCell1_AT (_menhir_stack, _menhir_s) = _menhir_stack in
                  let (size, e) = (_v_0, _v) in
                  let _v = _menhir_action_012 e size in
                  _menhir_goto_address_lvalue _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | ARROWINV ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | COMMA ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | INT _v_1 ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | RBRACKET ->
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          let MenhirCell1_AT (_menhir_stack, _menhir_s) = _menhir_stack in
                          let (size, e) = (_v_1, _v) in
                          let _v = _menhir_action_014 e size in
                          _menhir_goto_address_lvalue _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | ARROW ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | COMMA ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | INT _v_2 ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | RBRACKET ->
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          let MenhirCell1_AT (_menhir_stack, _menhir_s) = _menhir_stack in
                          let (size, e) = (_v_2, _v) in
                          let _v = _menhir_action_013 e size in
                          _menhir_goto_address_lvalue _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
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
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState192
      | _ ->
          _eRR ()
  
  and _menhir_goto_address_lvalue : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState397 ->
          _menhir_run_420 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState425 ->
          _menhir_run_234 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState315 ->
          _menhir_run_234 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState264 ->
          _menhir_run_234 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState268 ->
          _menhir_run_234 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState015 ->
          _menhir_run_234 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_420 : type  ttv_stack. ((ttv_stack, _menhir_box_initialization) _menhir_cell1_boption_UNCONTROLLED_ as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_initialization) _menhir_state -> _ -> _menhir_box_initialization =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | FROMFILE ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let v = _v in
          let _v = _menhir_action_124 v in
          _menhir_goto_initialization_assignment _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | FROM ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | FILE ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let v = _v in
              let _v = _menhir_action_125 v in
              _menhir_goto_initialization_assignment _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | ASSIGN | SEMICOLON ->
          let v = _v in
          let _v = _menhir_action_169 v in
          _menhir_goto_lvalue _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_234 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let v = _v in
      let _v = _menhir_action_169 v in
      _menhir_goto_lvalue _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_187 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_GOTO as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | XOR ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | STAR_U ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | STAR_S ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | STAR ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | SLASH_U ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | SLASH_S ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | RSHIFTU ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | RSHIFTS ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | RROTATE ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | PLUS ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | OR ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | NEQ ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | MODU ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | MODS ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | MINUS ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | LTU ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | LTS ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | LSHIFT ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | LROTATE ->
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | LEU ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | LES ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | LBRACE ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTU ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | GTS ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | GEU ->
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | GES ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | EQUAL ->
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | CONCAT ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | ANNOT ->
          _menhir_run_180 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | AND ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState187
      | BIN _ | EOF | HEXA _ | INFER | INT _ | LPAR ->
          let _v = _menhir_action_174 () in
          _menhir_goto_option_jump_annotation_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_161 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | XOR ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | STAR_U ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | STAR_S ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | STAR ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | SLASH_U ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | SLASH_S ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | RSHIFTU ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | RSHIFTS ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | RROTATE ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | PLUS ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | OR ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | NEQ ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | MODU ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | MODS ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | MINUS ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | LTU ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | LTS ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | LSHIFT ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | LROTATE ->
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | LEU ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | LES ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | LBRACE ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTU ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | GTS ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | GOTO ->
          let _menhir_stack = MenhirCell1_GOTO (_menhir_stack, MenhirState161) in
          let _menhir_s = MenhirState162 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAR ->
              _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | GEU ->
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | GES ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | EQUAL ->
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | CONCAT ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | AND ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
      | _ ->
          _eRR ()
  
  and _menhir_run_154 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_NOT -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_NOT (_menhir_stack, _menhir_s) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_085 e in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_153 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_MINUS as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState153
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONCAT | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | NEQ | PLUS | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | THEN ->
          let MenhirCell1_MINUS (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_086 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_151 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_MIN, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_COMMA as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | RPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_COMMA (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e1) = _menhir_stack in
          let MenhirCell1_MIN (_menhir_stack, _menhir_s) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_118 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | LBRACE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | EQUAL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
      | _ ->
          _eRR ()
  
  and _menhir_run_149 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_MIN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | XOR ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | STAR_U ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | STAR_S ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | STAR ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | SLASH_U ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | SLASH_S ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | RSHIFTU ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | RSHIFTS ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | RROTATE ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | PLUS ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | OR ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | NEQ ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | MODU ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | MODS ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | MINUS ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | LTU ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | LTS ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | LSHIFT ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | LROTATE ->
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | LEU ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | LES ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | LBRACE ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTU ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | GTS ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | GEU ->
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | GES ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | EQUAL ->
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | CONCAT ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | COMMA ->
          let _menhir_stack = MenhirCell1_COMMA (_menhir_stack, MenhirState149) in
          let _menhir_s = MenhirState150 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TMP _v ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | NOT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MIN ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MAX ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | HEXA _v ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | EXTU ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | EXTS ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSWAP ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BIN _v ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | AT ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | AND ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState149
      | _ ->
          _eRR ()
  
  and _menhir_run_147 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_MAX, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_COMMA as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | RPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_COMMA (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e1) = _menhir_stack in
          let MenhirCell1_MAX (_menhir_stack, _menhir_s) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_119 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | LBRACE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | EQUAL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
      | _ ->
          _eRR ()
  
  and _menhir_run_145 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_MAX as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | XOR ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | STAR_U ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | STAR_S ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | STAR ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | SLASH_U ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | SLASH_S ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | RSHIFTU ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | RSHIFTS ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | RROTATE ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | PLUS ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | OR ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | NEQ ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | MODU ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | MODS ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | MINUS ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | LTU ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | LTS ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | LSHIFT ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | LROTATE ->
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | LEU ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | LES ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | LBRACE ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTU ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | GTS ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | GEU ->
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | GES ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | EQUAL ->
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | CONCAT ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | COMMA ->
          let _menhir_stack = MenhirCell1_COMMA (_menhir_stack, MenhirState145) in
          let _menhir_s = MenhirState146 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TMP _v ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | NOT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MIN ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MAX ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | HEXA _v ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | EXTU ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | EXTS ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSWAP ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BIN _v ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | AT ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | AND ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState145
      | _ ->
          _eRR ()
  
  and _menhir_run_143 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAR as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | RPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_073 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | LBRACE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | EQUAL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | _ ->
          _eRR ()
  
  and _menhir_run_139 : type  ttv_stack ttv_result. ((((((ttv_stack, ttv_result) _menhir_cell1_IF, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_THEN, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_ELSE as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | EQUAL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | GOTO | HEXA _ | INFER | INT _ | LBRACE | LPAR | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | SEMICOLON | THEN ->
          let MenhirCell1_ELSE (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, then_e) = _menhir_stack in
          let MenhirCell1_THEN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, c) = _menhir_stack in
          let MenhirCell1_IF (_menhir_stack, _menhir_s) = _menhir_stack in
          let else_e = _v in
          let _v = _menhir_action_089 c else_e then_e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_137 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_IF, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_THEN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | XOR ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | STAR_U ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | STAR_S ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | STAR ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | SLASH_U ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | SLASH_S ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | RSHIFTU ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | RSHIFTS ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | RROTATE ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | PLUS ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | OR ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | NEQ ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | MODU ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | MODS ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | MINUS ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | LTU ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | LTS ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | LSHIFT ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | LROTATE ->
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | LEU ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | LES ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | LBRACE ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTU ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | GTS ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | GEU ->
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | GES ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | EQUAL ->
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | ELSE ->
          let _menhir_stack = MenhirCell1_ELSE (_menhir_stack, MenhirState137) in
          let _menhir_s = MenhirState138 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TMP _v ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | NOT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MIN ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MAX ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | HEXA _v ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | EXTU ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | EXTS ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSWAP ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BIN _v ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | AT ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | CONCAT ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | AND ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
      | _ ->
          _eRR ()
  
  and _menhir_run_135 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_IF as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | XOR ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | THEN ->
          let _menhir_stack = MenhirCell1_THEN (_menhir_stack, MenhirState135) in
          let _menhir_s = MenhirState136 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | TMP _v ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | NOT ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MINUS ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MIN ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | MAX ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LPAR ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | INT _v ->
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | IF ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | IDENT _v ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | HEXA _v ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | EXTU ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | EXTS ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BSWAP ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | BIN _v ->
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | AT ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | STAR_U ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | STAR_S ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | STAR ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | SLASH_U ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | SLASH_S ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | RSHIFTU ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | RSHIFTS ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | RROTATE ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | PLUS ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | OR ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | NEQ ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | MODU ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | MODS ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | MINUS ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | LTU ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | LTS ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | LSHIFT ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | LROTATE ->
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | LEU ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | LES ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | LBRACE ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTU ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | GTS ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | GEU ->
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | GES ->
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | EQUAL ->
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | CONCAT ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | AND ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
      | _ ->
          _eRR ()
  
  and _menhir_run_133 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_EXTU as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | LBRACE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer
      | INT _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_EXTU (_menhir_stack, _menhir_s) = _menhir_stack in
          let (size, e) = (_v_0, _v) in
          let _v = _menhir_action_087 e size in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | EQUAL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState133
      | _ ->
          _eRR ()
  
  and _menhir_run_131 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_EXTS as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | LBRACE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer
      | INT _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_EXTS (_menhir_stack, _menhir_s) = _menhir_stack in
          let (size, e) = (_v_0, _v) in
          let _v = _menhir_action_088 e size in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | EQUAL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | _ ->
          _eRR ()
  
  and _menhir_run_130 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_BSWAP as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | LBRACE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | EQUAL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | GOTO | HEXA _ | INFER | INT _ | LPAR | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | SEMICOLON | THEN ->
          let MenhirCell1_BSWAP (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_120 e in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_118 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_EQUAL as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState118
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState118
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState118
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState118
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState118
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState118
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState118
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState118
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState118
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState118
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState118
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState118
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState118
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState118
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState118
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState118
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState118
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState118
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | SEMICOLON | THEN ->
          let MenhirCell1_EQUAL (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_096 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_116 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_GES as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState116
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | SEMICOLON | THEN ->
          let MenhirCell1_GES (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_104 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_114 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_GEU as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | SEMICOLON | THEN ->
          let MenhirCell1_GEU (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_100 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_112 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_GTS as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | SEMICOLON | THEN ->
          let MenhirCell1_GTS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_105 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_110 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_GTU as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState110
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | SEMICOLON | THEN ->
          let MenhirCell1_GTU (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_101 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_102 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_LES as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | SEMICOLON | THEN ->
          let MenhirCell1_LES (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_102 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_100 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_LEU as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | SEMICOLON | THEN ->
          let MenhirCell1_LEU (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_098 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_098 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_LTS as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | SEMICOLON | THEN ->
          let MenhirCell1_LTS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_103 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_096 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_LTU as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | SEMICOLON | THEN ->
          let MenhirCell1_LTU (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_099 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_094 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_CONCAT as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONCAT | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | SEMICOLON | THEN ->
          let MenhirCell1_CONCAT (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_095 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_092 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_LROTATE as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONCAT | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | THEN ->
          let MenhirCell1_LROTATE (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_116 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_090 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_LSHIFT as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONCAT | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | THEN ->
          let MenhirCell1_LSHIFT (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_113 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_088 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_NEQ as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | SEMICOLON | THEN ->
          let MenhirCell1_NEQ (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_097 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_086 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_RROTATE as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState086
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONCAT | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | THEN ->
          let MenhirCell1_RROTATE (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_117 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_084 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_RSHIFTS as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONCAT | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | THEN ->
          let MenhirCell1_RSHIFTS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_115 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_082 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_MINUS as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONCAT | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | NEQ | PLUS | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | THEN ->
          let MenhirCell1_MINUS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_107 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_080 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_MODS as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState080
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState080
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState080
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONCAT | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | PLUS | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U | THEN ->
          let MenhirCell1_MODS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_091 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_078 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_MODU as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState078
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONCAT | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | PLUS | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U | THEN ->
          let MenhirCell1_MODU (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_090 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_076 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_PLUS as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState076
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONCAT | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | NEQ | PLUS | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | THEN ->
          let MenhirCell1_PLUS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_106 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_074 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_RSHIFTU as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState074
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONCAT | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | NEQ | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | THEN ->
          let MenhirCell1_RSHIFTU (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_114 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_072 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_SLASH_S as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState072
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONCAT | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | PLUS | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U | THEN ->
          let MenhirCell1_SLASH_S (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_112 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_070 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_SLASH_U as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState070
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONCAT | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | PLUS | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U | THEN ->
          let MenhirCell1_SLASH_U (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_111 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_068 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_STAR as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONCAT | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | PLUS | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U | THEN ->
          let MenhirCell1_STAR (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_108 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_066 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_STAR_S as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONCAT | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | PLUS | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U | THEN ->
          let MenhirCell1_STAR_S (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_110 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_064 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_OR as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONCAT | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | OR | PLUS | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U | THEN ->
          let MenhirCell1_OR (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_092 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_062 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_STAR_U as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState062
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONCAT | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | PLUS | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U | THEN ->
          let MenhirCell1_STAR_U (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_109 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_059 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_AND -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_AND (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
      let re = _v in
      let _v = _menhir_action_093 le re in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_057 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_expr, ttv_result) _menhir_cell1_XOR as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | AND ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState057
      | ALTERNATIVE | ANNOT | ASSUME | BIN _ | COMMA | CONCAT | CONSEQUENT | CUT | DOTDOT | ELSE | ENUMERATE | EOF | EQUAL | GES | GEU | GOTO | GTS | GTU | HEXA _ | INFER | INT _ | LBRACE | LES | LEU | LPAR | LROTATE | LSHIFT | LTS | LTU | MINUS | MODS | MODU | NEQ | OR | PLUS | RBRACE | RBRACKETS | RBRACKETU | REACH | RPAR | RROTATE | RSHIFTS | RSHIFTU | SEMICOLON | SLASH_S | SLASH_U | STAR | STAR_S | STAR_U | THEN | XOR ->
          let MenhirCell1_XOR (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, le) = _menhir_stack in
          let re = _v in
          let _v = _menhir_action_094 le re in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_055 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_AT as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | XOR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | STAR_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | STAR_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | STAR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | SLASH_U ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | SLASH_S ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | RSHIFTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | RSHIFTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | RROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | PLUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | OR ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | NEQ ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | MODU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | MODS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | MINUS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | LTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | LTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | LSHIFT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | LROTATE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | LEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | LES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | LBRACE ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer
      | GTU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | GTS ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | GEU ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | GES ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_115 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | EQUAL ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_117 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | CONCAT ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | COMMA ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | INT _v_0 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | RBRACKET ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  let MenhirCell1_AT (_menhir_stack, _menhir_s) = _menhir_stack in
                  let (size, e) = (_v_0, _v) in
                  let _v = _menhir_action_082 e size in
                  _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
              | _ ->
                  _eRR ())
          | ARROWINV ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | COMMA ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | INT _v_1 ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | RBRACKET ->
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          let MenhirCell1_AT (_menhir_stack, _menhir_s) = _menhir_stack in
                          let (size, e) = (_v_1, _v) in
                          let _v = _menhir_action_084 e size in
                          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | ARROW ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | COMMA ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | INT _v_2 ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | RBRACKET ->
                          let _tok = _menhir_lexer _menhir_lexbuf in
                          let MenhirCell1_AT (_menhir_stack, _menhir_s) = _menhir_stack in
                          let (size, e) = (_v_2, _v) in
                          let _v = _menhir_action_083 e size in
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
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState055
      | _ ->
          _eRR ()
  
  and _menhir_run_039 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_TMP -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_TMP (_menhir_stack, _menhir_s, id) = _menhir_stack in
      let x = _v in
      let _v = _menhir_action_077 id x in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_017 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let x = _v in
      let _v = _menhir_action_179 x in
      _menhir_goto_option_size_annot_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_option_size_annot_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState167 ->
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState016 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_006 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_INT -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_INT (_menhir_stack, _menhir_s, value) = _menhir_stack in
      let size = _v in
      let _v = _menhir_action_035 size value in
      _menhir_goto_constant _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  let _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_body =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState000
      | EOF ->
          let _v = _menhir_action_151 () in
          _menhir_run_235 _menhir_stack _v MenhirState000
      | _ ->
          _eRR ()
  
  let _menhir_run_238 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_dba =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | ENTRYPOINT ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | COLON ->
              let _menhir_s = MenhirState240 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LPAR ->
                  _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  let _menhir_run_307 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_decoder_msg) _menhir_state -> _ -> _menhir_box_decoder_msg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | UNIMPLEMENTED ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | RPAR ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | EOF ->
                      let base = _v in
                      let _v = _menhir_action_046 base in
                      _menhir_goto_decoder_msg _menhir_stack _v
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | INT _v_0 ->
              let _menhir_stack = MenhirCell1_decoder_base (_menhir_stack, _menhir_s, _v) in
              let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, MenhirState307) in
              _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState308
          | HEXA _v_1 ->
              let _menhir_stack = MenhirCell1_decoder_base (_menhir_stack, _menhir_s, _v) in
              let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, MenhirState307) in
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState308
          | BIN _v_2 ->
              let _menhir_stack = MenhirCell1_decoder_base (_menhir_stack, _menhir_s, _v) in
              let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, MenhirState307) in
              _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState308
          | _ ->
              _eRR ())
      | EOF ->
          let _menhir_stack = MenhirCell1_decoder_base (_menhir_stack, _menhir_s, _v) in
          let _v_3 = _menhir_action_151 () in
          _menhir_run_235 _menhir_stack _v_3 MenhirState307
      | _ ->
          _eRR ()
  
  let _menhir_run_296 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_decoder_base =
    fun _menhir_stack _v ->
      MenhirBox_decoder_base _v
  
  let _menhir_goto_decoder_base : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState297 ->
          _menhir_run_307 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState273 ->
          _menhir_run_296 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let _menhir_run_305 : type  ttv_stack. (((ttv_stack, _menhir_box_decoder_msg) _menhir_cell1_kv, _menhir_box_decoder_msg) _menhir_cell1_kv, _menhir_box_decoder_msg) _menhir_cell1_kv -> _ -> _ -> _ -> _ -> _menhir_box_decoder_msg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_kv (_menhir_stack, _, address) = _menhir_stack in
      let MenhirCell1_kv (_menhir_stack, _, mnemonic) = _menhir_stack in
      let MenhirCell1_kv (_menhir_stack, _menhir_s, opcode) = _menhir_stack in
      let size = _v in
      let _v = _menhir_action_043 address mnemonic opcode size in
      _menhir_goto_decoder_base _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  let _menhir_run_295 : type  ttv_stack. (((ttv_stack, _menhir_box_decoder_base) _menhir_cell1_kv, _menhir_box_decoder_base) _menhir_cell1_kv, _menhir_box_decoder_base) _menhir_cell1_kv -> _ -> _ -> _ -> _ -> _menhir_box_decoder_base =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_kv (_menhir_stack, _, address) = _menhir_stack in
      let MenhirCell1_kv (_menhir_stack, _, mnemonic) = _menhir_stack in
      let MenhirCell1_kv (_menhir_stack, _menhir_s, opcode) = _menhir_stack in
      let size = _v in
      let _v = _menhir_action_043 address mnemonic opcode size in
      _menhir_goto_decoder_base _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  let rec _menhir_run_274 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | IDENT _v ->
          _menhir_run_275 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_275 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LPAR -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | DOT ->
          let _menhir_s = MenhirState276 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STRING _v ->
              _menhir_run_277 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | INT _v ->
              _menhir_run_278 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | HEXA _v ->
              _menhir_run_279 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | BIN _v ->
              _menhir_run_280 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_277 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAR _menhir_cell0_IDENT as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_203 _1 in
      _menhir_goto_value _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_value : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAR _menhir_cell0_IDENT as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState292 ->
          _menhir_run_293 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState276 ->
          _menhir_run_281 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_293 : type  ttv_stack. (ttv_stack, _menhir_box_decoder_base) _menhir_cell1_LPAR _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> _menhir_box_decoder_base =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAR ->
          let MenhirCell0_IDENT (_menhir_stack, key) = _menhir_stack in
          let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
          let v = _v in
          let _v = _menhir_action_145 key v in
          _menhir_goto_kv _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_kv : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState304 ->
          _menhir_run_305 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState303 ->
          _menhir_run_304 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState298 ->
          _menhir_run_303 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState297 ->
          _menhir_run_298 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState289 ->
          _menhir_run_295 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState288 ->
          _menhir_run_289 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState283 ->
          _menhir_run_288 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState273 ->
          _menhir_run_283 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_304 : type  ttv_stack. (((ttv_stack, _menhir_box_decoder_msg) _menhir_cell1_kv, _menhir_box_decoder_msg) _menhir_cell1_kv as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_decoder_msg) _menhir_state -> _ -> _menhir_box_decoder_msg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_kv (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          _menhir_run_274 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState304
      | _ ->
          _eRR ()
  
  and _menhir_run_303 : type  ttv_stack. ((ttv_stack, _menhir_box_decoder_msg) _menhir_cell1_kv as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_decoder_msg) _menhir_state -> _ -> _menhir_box_decoder_msg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_kv (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          _menhir_run_274 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState303
      | _ ->
          _eRR ()
  
  and _menhir_run_298 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_decoder_msg) _menhir_state -> _ -> _menhir_box_decoder_msg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | UNDEFINED ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | RPAR ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | EOF ->
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      let address = _v in
                      let _v = _menhir_action_044 address in
                      _menhir_goto_decoder_base _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | IDENT _v_0 ->
              let _menhir_stack = MenhirCell1_kv (_menhir_stack, _menhir_s, _v) in
              let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, MenhirState298) in
              _menhir_run_275 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_289 : type  ttv_stack. (((ttv_stack, _menhir_box_decoder_base) _menhir_cell1_kv, _menhir_box_decoder_base) _menhir_cell1_kv as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_decoder_base) _menhir_state -> _ -> _menhir_box_decoder_base =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_kv (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, MenhirState289) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | IDENT _v ->
              let _menhir_stack = MenhirCell0_IDENT (_menhir_stack, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | DOT ->
                  let _menhir_s = MenhirState292 in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | STRING _v ->
                      _menhir_run_277 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | INT _v ->
                      _menhir_run_278 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | HEXA _v ->
                      _menhir_run_279 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | BIN _v ->
                      _menhir_run_280 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_278 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAR _menhir_cell0_IDENT as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_204 _1 in
      _menhir_goto_value _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_279 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAR _menhir_cell0_IDENT as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_201 _1 in
      _menhir_goto_value _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_280 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAR _menhir_cell0_IDENT as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_202 _1 in
      _menhir_goto_value _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_288 : type  ttv_stack. ((ttv_stack, _menhir_box_decoder_base) _menhir_cell1_kv as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_decoder_base) _menhir_state -> _ -> _menhir_box_decoder_base =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_kv (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          _menhir_run_274 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState288
      | _ ->
          _eRR ()
  
  and _menhir_run_283 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_decoder_base) _menhir_state -> _ -> _menhir_box_decoder_base =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | UNDEFINED ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | RPAR ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | EOF ->
                      let address = _v in
                      let _v = _menhir_action_044 address in
                      _menhir_goto_decoder_base _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | IDENT _v_0 ->
              let _menhir_stack = MenhirCell1_kv (_menhir_stack, _menhir_s, _v) in
              let _menhir_stack = MenhirCell1_LPAR (_menhir_stack, MenhirState283) in
              _menhir_run_275 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_281 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LPAR _menhir_cell0_IDENT -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAR ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_IDENT (_menhir_stack, key) = _menhir_stack in
          let MenhirCell1_LPAR (_menhir_stack, _menhir_s) = _menhir_stack in
          let v = _v in
          let _v = _menhir_action_145 key v in
          _menhir_goto_kv _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  let _menhir_run_273 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_decoder_base =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState273 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          _menhir_run_274 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  let _menhir_run_297 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_decoder_msg =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState297 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          _menhir_run_274 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  let _menhir_run_313 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_dhunk_eof =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | INT _v ->
          _menhir_run_314 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState313
      | EOF ->
          let _v = _menhir_action_149 () in
          _menhir_run_317 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState313 _tok
      | _ ->
          _eRR ()
  
  let _menhir_run_323 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_dhunk_substitutions_eof =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | INT _v ->
          _menhir_run_324 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState323
      | INFER ->
          _menhir_run_325 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState323
      | HEXA _v ->
          _menhir_run_330 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState323
      | BIN _v ->
          _menhir_run_331 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState323
      | EOF ->
          let _v = _menhir_action_147 () in
          _menhir_run_335 _menhir_stack _v
      | _ ->
          _eRR ()
  
  let _menhir_run_344 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_directives =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState344 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  let _menhir_run_384 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_expr_eof =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState384 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NOT ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MINUS ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MIN ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | MAX ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LPAR ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | INT _v ->
          _menhir_run_002 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | IF ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | HEXA _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | EXTU ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXTS ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BSWAP ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BIN _v ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | AT ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  let _menhir_run_388 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_initialization =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | UNCONTROLLED ->
          _menhir_run_389 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState388
      | ASSUME ->
          _menhir_run_390 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState388
      | AT | IDENT _ | TMP _ ->
          let _menhir_s = MenhirState388 in
          let _v = _menhir_action_032 () in
          _menhir_goto_boption_UNCONTROLLED_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | EOF ->
          let _v = _menhir_action_159 () in
          _menhir_run_392 _menhir_stack _v
      | _ ->
          _eRR ()
  
  let _menhir_run_425 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_instruction_eof =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState425 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TMP _v ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | STOP ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IF ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | IDENT _v ->
          _menhir_run_167 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | GOTO ->
          _menhir_run_175 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | AT ->
          _menhir_run_190 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ASSUME ->
          _menhir_run_204 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | ASSERT ->
          _menhir_run_212 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  let _menhir_run_429 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_patchmap =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAR ->
          _menhir_run_430 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState429
      | EOF ->
          let _v = _menhir_action_153 () in
          _menhir_run_443 _menhir_stack _v
      | _ ->
          _eRR ()
  
end

let patchmap =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_patchmap v = _menhir_run_429 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let instruction_eof =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_instruction_eof v = _menhir_run_425 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let initialization =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_initialization v = _menhir_run_388 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let expr_eof =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_expr_eof v = _menhir_run_384 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let directives =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_directives v = _menhir_run_344 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let dhunk_substitutions_eof =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_dhunk_substitutions_eof v = _menhir_run_323 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let dhunk_eof =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_dhunk_eof v = _menhir_run_313 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let decoder_msg =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_decoder_msg v = _menhir_run_297 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let decoder_base =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_decoder_base v = _menhir_run_273 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let dba =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_dba v = _menhir_run_238 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let body =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_body v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
