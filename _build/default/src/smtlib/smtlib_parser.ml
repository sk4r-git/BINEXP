
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | UNDERSCORE
    | SYMBOL of (
# 140 "src/smtlib/smtlib_parser.mly"
       (string)
# 16 "src/smtlib/smtlib_parser.ml"
  )
    | STRING of (
# 137 "src/smtlib/smtlib_parser.mly"
       (string)
# 21 "src/smtlib/smtlib_parser.ml"
  )
    | SETOPTION
    | SETLOGIC
    | SETINFO
    | RPAREN
    | RESETASSERTIONS
    | RESET
    | QUOTEDSYMBOL of (
# 141 "src/smtlib/smtlib_parser.mly"
       (string)
# 32 "src/smtlib/smtlib_parser.ml"
  )
    | PUSH
    | POP
    | PAR
    | NUMERAL of (
# 132 "src/smtlib/smtlib_parser.mly"
       (Smtlib.numeral)
# 40 "src/smtlib/smtlib_parser.ml"
  )
    | MODEL
    | METAINFO
    | LPAREN
    | LET
    | LAMBDA
    | KEYWORD of (
# 139 "src/smtlib/smtlib_parser.mly"
       (string)
# 50 "src/smtlib/smtlib_parser.ml"
  )
    | HEXADECIMAL of (
# 134 "src/smtlib/smtlib_parser.mly"
       (string)
# 55 "src/smtlib/smtlib_parser.ml"
  )
    | GETVALUE
    | GETUNSATCORE
    | GETUNSATASSUMPTIONS
    | GETPROOF
    | GETOPTION
    | GETMODEL
    | GETINFO
    | GETASSIGNMENT
    | GETASSERTIONS
    | FORALL
    | EXIT
    | EXISTS
    | EOF
    | ECHO
    | DEFINESORT
    | DEFINEFUNREC
    | DEFINEFUN
    | DECLARESORT
    | DECLAREFUN
    | DECLARECONST
    | DECIMAL of (
# 133 "src/smtlib/smtlib_parser.mly"
       (string)
# 80 "src/smtlib/smtlib_parser.ml"
  )
    | CHECKSAT
    | BV_NUMERAL of (
# 135 "src/smtlib/smtlib_parser.mly"
       (string)
# 86 "src/smtlib/smtlib_parser.ml"
  )
    | BOOL of (
# 138 "src/smtlib/smtlib_parser.mly"
       (bool)
# 91 "src/smtlib/smtlib_parser.ml"
  )
    | BINARY of (
# 136 "src/smtlib/smtlib_parser.mly"
       (string)
# 96 "src/smtlib/smtlib_parser.ml"
  )
    | BANG
    | ASSERT
    | AS
  
end

include MenhirBasics

# 22 "src/smtlib/smtlib_parser.mly"
  
    open Smtlib
    open Location ;;

    (* Helper construction functions.
       File location is handled in production rules.
       *)
    let mk_sexpr sexpr_desc sexpr_loc = { sexpr_desc; sexpr_loc; } ;;
    let mk_identifier id_desc id_loc = { id_desc; id_loc; } ;;

    let mk_sort sort_desc sort_loc = { sort_desc; sort_loc; } ;;

    let mk_command command_desc command_loc =
      { command_desc; command_loc; }
    ;;

    let mk_fun_def fun_def_desc fun_def_loc =
      { fun_def_desc; fun_def_loc; }
    ;;

    let mk_fun_rec_def fun_rec_def_desc fun_rec_def_loc =
      { fun_rec_def_desc; fun_rec_def_loc; }
    ;;

    let mk_sorted_var sorted_var_desc sorted_var_loc =
      { sorted_var_desc; sorted_var_loc; }
    ;;

    let mk_qual_identifier qual_identifier_desc qual_identifier_loc =
      { qual_identifier_desc; qual_identifier_loc; }
    ;;

    let mk_var_binding var_binding_desc var_binding_loc =
      { var_binding_desc; var_binding_loc; }
    ;;

    let mk_term term_desc term_loc = { term_desc; term_loc; } ;;

    let mk_smt_option smt_option_desc smt_option_loc = {
        smt_option_desc; smt_option_loc ;
      }
    ;;

    let mk_script script_commands script_loc =
      { script_commands; script_loc; }
    ;;

    let mk_model model_commands model_loc = { model_commands; model_loc; }
    let mk_attribute attribute_desc attribute_loc =
      { attribute_desc; attribute_loc; }
    ;;

    let mk_attr_value attr_value_desc attr_value_loc =
      { attr_value_desc; attr_value_loc; }
    ;;

    let mk_info_flag info_flag_desc info_flag_loc =
      { info_flag_desc; info_flag_loc; }
    ;;

    let mk_symbol symbol_desc symbol_loc = { symbol_desc; symbol_loc; } ;;

    let mk_loc _ _ = dummy_loc

# 171 "src/smtlib/smtlib_parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState000 : ('s, _menhir_box_ivalue) _menhir_state
    (** State 000.
        Stack shape : .
        Start symbol: ivalue. *)

  | MenhirState003 : (('s, _menhir_box_ivalue) _menhir_cell1_LPAREN _menhir_cell0_LPAREN, _menhir_box_ivalue) _menhir_state
    (** State 003.
        Stack shape : LPAREN LPAREN.
        Start symbol: ivalue. *)

  | MenhirState008 : ((('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_LPAREN, 'r) _menhir_cell1_LPAREN, 'r) _menhir_state
    (** State 008.
        Stack shape : LPAREN LPAREN LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState009 : ((('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_cell1_UNDERSCORE, 'r) _menhir_state
    (** State 009.
        Stack shape : LPAREN UNDERSCORE.
        Start symbol: <undetermined>. *)

  | MenhirState013 : (((('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_cell1_UNDERSCORE, 'r) _menhir_cell1_symbol, 'r) _menhir_state
    (** State 013.
        Stack shape : LPAREN UNDERSCORE symbol.
        Start symbol: <undetermined>. *)

  | MenhirState018 : (('s, 'r) _menhir_cell1_index, 'r) _menhir_state
    (** State 018.
        Stack shape : index.
        Start symbol: <undetermined>. *)

  | MenhirState020 : (('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_state
    (** State 020.
        Stack shape : LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState021 : ((('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_cell1_LPAREN, 'r) _menhir_state
    (** State 021.
        Stack shape : LPAREN LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState022 : ((('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_cell1_UNDERSCORE, 'r) _menhir_state
    (** State 022.
        Stack shape : LPAREN UNDERSCORE.
        Start symbol: <undetermined>. *)

  | MenhirState023 : ((('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_cell1_AS, 'r) _menhir_state
    (** State 023.
        Stack shape : LPAREN AS.
        Start symbol: <undetermined>. *)

  | MenhirState024 : (('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_state
    (** State 024.
        Stack shape : LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState026 : (((('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_cell1_AS, 'r) _menhir_cell1_identifier, 'r) _menhir_state
    (** State 026.
        Stack shape : LPAREN AS identifier.
        Start symbol: <undetermined>. *)

  | MenhirState027 : (('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_state
    (** State 027.
        Stack shape : LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState028 : ((('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_cell1_identifier, 'r) _menhir_state
    (** State 028.
        Stack shape : LPAREN identifier.
        Start symbol: <undetermined>. *)

  | MenhirState029 : (('s, 'r) _menhir_cell1_sort, 'r) _menhir_state
    (** State 029.
        Stack shape : sort.
        Start symbol: <undetermined>. *)

  | MenhirState037 : ((('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_cell1_LET _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 037.
        Stack shape : LPAREN LET LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState038 : (('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_state
    (** State 038.
        Stack shape : LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState039 : ((('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_cell1_symbol, 'r) _menhir_state
    (** State 039.
        Stack shape : LPAREN symbol.
        Start symbol: <undetermined>. *)

  | MenhirState049 : (('s, 'r) _menhir_cell1_var_binding, 'r) _menhir_state
    (** State 049.
        Stack shape : var_binding.
        Start symbol: <undetermined>. *)

  | MenhirState052 : (((('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_cell1_LET _menhir_cell0_LPAREN, 'r) _menhir_cell1_nonempty_list_var_binding_ _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 052.
        Stack shape : LPAREN LET LPAREN nonempty_list(var_binding) RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState056 : ((('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_cell1_LAMBDA _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 056.
        Stack shape : LPAREN LAMBDA LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState057 : (('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_state
    (** State 057.
        Stack shape : LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState058 : ((('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_cell1_symbol, 'r) _menhir_state
    (** State 058.
        Stack shape : LPAREN symbol.
        Start symbol: <undetermined>. *)

  | MenhirState061 : (('s, 'r) _menhir_cell1_sorted_var, 'r) _menhir_state
    (** State 061.
        Stack shape : sorted_var.
        Start symbol: <undetermined>. *)

  | MenhirState064 : (((('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_cell1_LAMBDA _menhir_cell0_LPAREN, 'r) _menhir_cell1_nonempty_list_sorted_var_ _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 064.
        Stack shape : LPAREN LAMBDA LPAREN nonempty_list(sorted_var) RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState068 : ((('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_cell1_FORALL _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 068.
        Stack shape : LPAREN FORALL LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState070 : (((('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_cell1_FORALL _menhir_cell0_LPAREN, 'r) _menhir_cell1_nonempty_list_sorted_var_ _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 070.
        Stack shape : LPAREN FORALL LPAREN nonempty_list(sorted_var) RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState074 : ((('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_cell1_EXISTS _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 074.
        Stack shape : LPAREN EXISTS LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState076 : (((('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_cell1_EXISTS _menhir_cell0_LPAREN, 'r) _menhir_cell1_nonempty_list_sorted_var_ _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 076.
        Stack shape : LPAREN EXISTS LPAREN nonempty_list(sorted_var) RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState079 : ((('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_cell1_BANG, 'r) _menhir_state
    (** State 079.
        Stack shape : LPAREN BANG.
        Start symbol: <undetermined>. *)

  | MenhirState080 : (((('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_cell1_BANG, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 080.
        Stack shape : LPAREN BANG term.
        Start symbol: <undetermined>. *)

  | MenhirState081 : (('s, 'r) _menhir_cell1_KEYWORD, 'r) _menhir_state
    (** State 081.
        Stack shape : KEYWORD.
        Start symbol: <undetermined>. *)

  | MenhirState082 : ((('s, 'r) _menhir_cell1_KEYWORD, 'r) _menhir_cell1_LPAREN, 'r) _menhir_state
    (** State 082.
        Stack shape : KEYWORD LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState083 : ((('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_cell1_UNDERSCORE, 'r) _menhir_state
    (** State 083.
        Stack shape : LPAREN UNDERSCORE.
        Start symbol: <undetermined>. *)

  | MenhirState084 : (('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_state
    (** State 084.
        Stack shape : LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState088 : (('s, 'r) _menhir_cell1_sexpr, 'r) _menhir_state
    (** State 088.
        Stack shape : sexpr.
        Start symbol: <undetermined>. *)

  | MenhirState099 : (('s, 'r) _menhir_cell1_attribute, 'r) _menhir_state
    (** State 099.
        Stack shape : attribute.
        Start symbol: <undetermined>. *)

  | MenhirState101 : ((('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_cell1_qual_identifier, 'r) _menhir_state
    (** State 101.
        Stack shape : LPAREN qual_identifier.
        Start symbol: <undetermined>. *)

  | MenhirState102 : (('s, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 102.
        Stack shape : term.
        Start symbol: <undetermined>. *)

  | MenhirState106 : ((('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_cell1_term, 'r) _menhir_state
    (** State 106.
        Stack shape : LPAREN term.
        Start symbol: <undetermined>. *)

  | MenhirState108 : (((('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_cell1_term, 'r) _menhir_cell1_term _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 108.
        Stack shape : LPAREN term term RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState109 : ((((('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_cell1_term, 'r) _menhir_cell1_term _menhir_cell0_RPAREN, 'r) _menhir_cell1_LPAREN, 'r) _menhir_state
    (** State 109.
        Stack shape : LPAREN term term RPAREN LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState111 : (((('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_LPAREN, 'r) _menhir_cell1_LPAREN, 'r) _menhir_cell1_qual_identifier, 'r) _menhir_state
    (** State 111.
        Stack shape : LPAREN LPAREN LPAREN qual_identifier.
        Start symbol: <undetermined>. *)

  | MenhirState112 : ((('s, _menhir_box_ivalue) _menhir_cell1_LPAREN _menhir_cell0_LPAREN, _menhir_box_ivalue) _menhir_cell1_term, _menhir_box_ivalue) _menhir_state
    (** State 112.
        Stack shape : LPAREN LPAREN term.
        Start symbol: ivalue. *)

  | MenhirState123 : ('s _menhir_cell0_LPAREN _menhir_cell0_option_MODEL_, _menhir_box_model) _menhir_state
    (** State 123.
        Stack shape : LPAREN option(MODEL).
        Start symbol: model. *)

  | MenhirState125 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_SETOPTION, 'r) _menhir_state
    (** State 125.
        Stack shape : LPAREN SETOPTION.
        Start symbol: <undetermined>. *)

  | MenhirState127 : ((('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_SETOPTION, 'r) _menhir_cell1_smt_option _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 127.
        Stack shape : LPAREN SETOPTION smt_option RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState130 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_SETLOGIC, 'r) _menhir_state
    (** State 130.
        Stack shape : LPAREN SETLOGIC.
        Start symbol: <undetermined>. *)

  | MenhirState132 : ((('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_SETLOGIC, 'r) _menhir_cell1_symbol _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 132.
        Stack shape : LPAREN SETLOGIC symbol RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState134 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_SETINFO, 'r) _menhir_state
    (** State 134.
        Stack shape : LPAREN SETINFO.
        Start symbol: <undetermined>. *)

  | MenhirState136 : ((('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_SETINFO, 'r) _menhir_cell1_attribute _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 136.
        Stack shape : LPAREN SETINFO attribute RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState139 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_RESETASSERTIONS _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 139.
        Stack shape : LPAREN RESETASSERTIONS RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState142 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_RESET _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 142.
        Stack shape : LPAREN RESET RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState144 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_PUSH, 'r) _menhir_state
    (** State 144.
        Stack shape : LPAREN PUSH.
        Start symbol: <undetermined>. *)

  | MenhirState147 : ((('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_PUSH, 'r) _menhir_cell1_option_NUMERAL_ _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 147.
        Stack shape : LPAREN PUSH option(NUMERAL) RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState149 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_POP, 'r) _menhir_state
    (** State 149.
        Stack shape : LPAREN POP.
        Start symbol: <undetermined>. *)

  | MenhirState151 : ((('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_POP, 'r) _menhir_cell1_option_NUMERAL_ _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 151.
        Stack shape : LPAREN POP option(NUMERAL) RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState153 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_METAINFO, 'r) _menhir_state
    (** State 153.
        Stack shape : LPAREN METAINFO.
        Start symbol: <undetermined>. *)

  | MenhirState155 : ((('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_METAINFO, 'r) _menhir_cell1_attribute _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 155.
        Stack shape : LPAREN METAINFO attribute RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState158 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_GETVALUE _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 158.
        Stack shape : LPAREN GETVALUE LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState161 : ((('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_GETVALUE _menhir_cell0_LPAREN, 'r) _menhir_cell1_nonempty_list_term_ _menhir_cell0_RPAREN _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 161.
        Stack shape : LPAREN GETVALUE LPAREN nonempty_list(term) RPAREN RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState164 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_GETUNSATCORE _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 164.
        Stack shape : LPAREN GETUNSATCORE RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState167 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_GETUNSATASSUMPTIONS _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 167.
        Stack shape : LPAREN GETUNSATASSUMPTIONS RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState170 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_GETPROOF _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 170.
        Stack shape : LPAREN GETPROOF RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState174 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_GETOPTION _menhir_cell0_KEYWORD _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 174.
        Stack shape : LPAREN GETOPTION KEYWORD RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState177 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_GETMODEL _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 177.
        Stack shape : LPAREN GETMODEL RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState182 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_GETINFO _menhir_cell0_info_flag _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 182.
        Stack shape : LPAREN GETINFO info_flag RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState185 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_GETASSIGNMENT _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 185.
        Stack shape : LPAREN GETASSIGNMENT RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState188 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_GETASSERTIONS _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 188.
        Stack shape : LPAREN GETASSERTIONS RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState191 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_EXIT _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 191.
        Stack shape : LPAREN EXIT RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState195 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_ECHO _menhir_cell0_STRING _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 195.
        Stack shape : LPAREN ECHO STRING RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState197 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_DEFINESORT, 'r) _menhir_state
    (** State 197.
        Stack shape : LPAREN DEFINESORT.
        Start symbol: <undetermined>. *)

  | MenhirState199 : ((('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_DEFINESORT, 'r) _menhir_cell1_symbol _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 199.
        Stack shape : LPAREN DEFINESORT symbol LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState200 : (('s, 'r) _menhir_cell1_symbol, 'r) _menhir_state
    (** State 200.
        Stack shape : symbol.
        Start symbol: <undetermined>. *)

  | MenhirState203 : (((('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_DEFINESORT, 'r) _menhir_cell1_symbol _menhir_cell0_LPAREN, 'r) _menhir_cell1_nonempty_list_symbol_ _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 203.
        Stack shape : LPAREN DEFINESORT symbol LPAREN nonempty_list(symbol) RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState205 : ((((('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_DEFINESORT, 'r) _menhir_cell1_symbol _menhir_cell0_LPAREN, 'r) _menhir_cell1_nonempty_list_symbol_ _menhir_cell0_RPAREN, 'r) _menhir_cell1_sort _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 205.
        Stack shape : LPAREN DEFINESORT symbol LPAREN nonempty_list(symbol) RPAREN sort RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState208 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_DEFINEFUNREC _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 208.
        Stack shape : LPAREN DEFINEFUNREC LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState209 : (('s, 'r) _menhir_cell1_LPAREN, 'r) _menhir_state
    (** State 209.
        Stack shape : LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState210 : (('s, 'r) _menhir_cell1_symbol, 'r) _menhir_state
    (** State 210.
        Stack shape : symbol.
        Start symbol: <undetermined>. *)

  | MenhirState212 : ((('s, 'r) _menhir_cell1_symbol, 'r) _menhir_cell1_PAR _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 212.
        Stack shape : symbol PAR LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState217 : ((('s, 'r) _menhir_cell1_symbol, 'r) _menhir_cell1_option_poly_parameters_ _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 217.
        Stack shape : symbol option(poly_parameters) LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState218 : (('s, 'r) _menhir_cell1_sorted_var, 'r) _menhir_state
    (** State 218.
        Stack shape : sorted_var.
        Start symbol: <undetermined>. *)

  | MenhirState221 : (((('s, 'r) _menhir_cell1_symbol, 'r) _menhir_cell1_option_poly_parameters_ _menhir_cell0_LPAREN, 'r) _menhir_cell1_list_sorted_var_ _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 221.
        Stack shape : symbol option(poly_parameters) LPAREN list(sorted_var) RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState222 : ((((('s, 'r) _menhir_cell1_symbol, 'r) _menhir_cell1_option_poly_parameters_ _menhir_cell0_LPAREN, 'r) _menhir_cell1_list_sorted_var_ _menhir_cell0_RPAREN, 'r) _menhir_cell1_sort, 'r) _menhir_state
    (** State 222.
        Stack shape : symbol option(poly_parameters) LPAREN list(sorted_var) RPAREN sort.
        Start symbol: <undetermined>. *)

  | MenhirState228 : ((('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_DEFINEFUNREC _menhir_cell0_LPAREN, 'r) _menhir_cell1_nonempty_list_fun_rec_def_ _menhir_cell0_RPAREN _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 228.
        Stack shape : LPAREN DEFINEFUNREC LPAREN nonempty_list(fun_rec_def) RPAREN RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState230 : (('s, 'r) _menhir_cell1_fun_rec_def, 'r) _menhir_state
    (** State 230.
        Stack shape : fun_rec_def.
        Start symbol: <undetermined>. *)

  | MenhirState232 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_DEFINEFUN, 'r) _menhir_state
    (** State 232.
        Stack shape : LPAREN DEFINEFUN.
        Start symbol: <undetermined>. *)

  | MenhirState234 : ((('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_DEFINEFUN, 'r) _menhir_cell1_fun_nonrec_def _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 234.
        Stack shape : LPAREN DEFINEFUN fun_nonrec_def RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState237 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_DECLARESORT, 'r) _menhir_state
    (** State 237.
        Stack shape : LPAREN DECLARESORT.
        Start symbol: <undetermined>. *)

  | MenhirState240 : ((('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_DECLARESORT, 'r) _menhir_cell1_symbol _menhir_cell0_NUMERAL _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 240.
        Stack shape : LPAREN DECLARESORT symbol NUMERAL RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState242 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_DECLAREFUN, 'r) _menhir_state
    (** State 242.
        Stack shape : LPAREN DECLAREFUN.
        Start symbol: <undetermined>. *)

  | MenhirState243 : ((('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_DECLAREFUN, 'r) _menhir_cell1_symbol, 'r) _menhir_state
    (** State 243.
        Stack shape : LPAREN DECLAREFUN symbol.
        Start symbol: <undetermined>. *)

  | MenhirState245 : (((('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_DECLAREFUN, 'r) _menhir_cell1_symbol, 'r) _menhir_cell1_option_poly_parameters_ _menhir_cell0_LPAREN, 'r) _menhir_state
    (** State 245.
        Stack shape : LPAREN DECLAREFUN symbol option(poly_parameters) LPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState246 : (('s, 'r) _menhir_cell1_sort, 'r) _menhir_state
    (** State 246.
        Stack shape : sort.
        Start symbol: <undetermined>. *)

  | MenhirState249 : ((((('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_DECLAREFUN, 'r) _menhir_cell1_symbol, 'r) _menhir_cell1_option_poly_parameters_ _menhir_cell0_LPAREN, 'r) _menhir_cell1_list_sort_ _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 249.
        Stack shape : LPAREN DECLAREFUN symbol option(poly_parameters) LPAREN list(sort) RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState251 : (((((('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_DECLAREFUN, 'r) _menhir_cell1_symbol, 'r) _menhir_cell1_option_poly_parameters_ _menhir_cell0_LPAREN, 'r) _menhir_cell1_list_sort_ _menhir_cell0_RPAREN, 'r) _menhir_cell1_sort _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 251.
        Stack shape : LPAREN DECLAREFUN symbol option(poly_parameters) LPAREN list(sort) RPAREN sort RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState253 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_DECLARECONST, 'r) _menhir_state
    (** State 253.
        Stack shape : LPAREN DECLARECONST.
        Start symbol: <undetermined>. *)

  | MenhirState254 : ((('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_DECLARECONST, 'r) _menhir_cell1_symbol, 'r) _menhir_state
    (** State 254.
        Stack shape : LPAREN DECLARECONST symbol.
        Start symbol: <undetermined>. *)

  | MenhirState256 : (((('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_DECLARECONST, 'r) _menhir_cell1_symbol, 'r) _menhir_cell1_sort _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 256.
        Stack shape : LPAREN DECLARECONST symbol sort RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState259 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_CHECKSAT _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 259.
        Stack shape : LPAREN CHECKSAT RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState261 : (('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_ASSERT, 'r) _menhir_state
    (** State 261.
        Stack shape : LPAREN ASSERT.
        Start symbol: <undetermined>. *)

  | MenhirState263 : ((('s, 'r) _menhir_cell1_LPAREN _menhir_cell0_ASSERT, 'r) _menhir_cell1_term _menhir_cell0_RPAREN, 'r) _menhir_state
    (** State 263.
        Stack shape : LPAREN ASSERT term RPAREN.
        Start symbol: <undetermined>. *)

  | MenhirState269 : ('s, _menhir_box_script) _menhir_state
    (** State 269.
        Stack shape : .
        Start symbol: script. *)

  | MenhirState273 : ('s, _menhir_box_value) _menhir_state
    (** State 273.
        Stack shape : .
        Start symbol: value. *)

  | MenhirState276 : (('s, _menhir_box_value) _menhir_cell1_LPAREN _menhir_cell0_LPAREN, _menhir_box_value) _menhir_state
    (** State 276.
        Stack shape : LPAREN LPAREN.
        Start symbol: value. *)

  | MenhirState277 : ((('s, _menhir_box_value) _menhir_cell1_LPAREN _menhir_cell0_LPAREN, _menhir_box_value) _menhir_cell1_term, _menhir_box_value) _menhir_state
    (** State 277.
        Stack shape : LPAREN LPAREN term.
        Start symbol: value. *)


and ('s, 'r) _menhir_cell1_attribute = 
  | MenhirCell1_attribute of 's * ('s, 'r) _menhir_state * (Smtlib.attribute) * Lexing.position * Lexing.position

and ('s, 'r) _menhir_cell1_fun_nonrec_def = 
  | MenhirCell1_fun_nonrec_def of 's * ('s, 'r) _menhir_state * (Smtlib.fun_def) * Lexing.position

and ('s, 'r) _menhir_cell1_fun_rec_def = 
  | MenhirCell1_fun_rec_def of 's * ('s, 'r) _menhir_state * (Smtlib.fun_rec_def)

and ('s, 'r) _menhir_cell1_identifier = 
  | MenhirCell1_identifier of 's * ('s, 'r) _menhir_state * (Smtlib.identifier) * Lexing.position * Lexing.position

and ('s, 'r) _menhir_cell1_index = 
  | MenhirCell1_index of 's * ('s, 'r) _menhir_state * (Smtlib.index)

and 's _menhir_cell0_info_flag = 
  | MenhirCell0_info_flag of 's * (Smtlib.info_flag) * Lexing.position

and ('s, 'r) _menhir_cell1_list_sort_ = 
  | MenhirCell1_list_sort_ of 's * ('s, 'r) _menhir_state * (Smtlib.sorts)

and ('s, 'r) _menhir_cell1_list_sorted_var_ = 
  | MenhirCell1_list_sorted_var_ of 's * ('s, 'r) _menhir_state * (Smtlib.sorted_vars)

and ('s, 'r) _menhir_cell1_nonempty_list_fun_rec_def_ = 
  | MenhirCell1_nonempty_list_fun_rec_def_ of 's * ('s, 'r) _menhir_state * (Smtlib.fun_rec_defs)

and ('s, 'r) _menhir_cell1_nonempty_list_sorted_var_ = 
  | MenhirCell1_nonempty_list_sorted_var_ of 's * ('s, 'r) _menhir_state * (Smtlib.sorted_vars)

and ('s, 'r) _menhir_cell1_nonempty_list_symbol_ = 
  | MenhirCell1_nonempty_list_symbol_ of 's * ('s, 'r) _menhir_state * (Smtlib.symbols)

and ('s, 'r) _menhir_cell1_nonempty_list_term_ = 
  | MenhirCell1_nonempty_list_term_ of 's * ('s, 'r) _menhir_state * (Smtlib.terms)

and ('s, 'r) _menhir_cell1_nonempty_list_var_binding_ = 
  | MenhirCell1_nonempty_list_var_binding_ of 's * ('s, 'r) _menhir_state * (Smtlib.var_bindings)

and 's _menhir_cell0_option_MODEL_ = 
  | MenhirCell0_option_MODEL_ of 's * (unit option)

and ('s, 'r) _menhir_cell1_option_NUMERAL_ = 
  | MenhirCell1_option_NUMERAL_ of 's * ('s, 'r) _menhir_state * (string option) * Lexing.position

and ('s, 'r) _menhir_cell1_option_poly_parameters_ = 
  | MenhirCell1_option_poly_parameters_ of 's * ('s, 'r) _menhir_state * (Smtlib.sorts option)

and ('s, 'r) _menhir_cell1_qual_identifier = 
  | MenhirCell1_qual_identifier of 's * ('s, 'r) _menhir_state * (Smtlib.qual_identifier) * Lexing.position * Lexing.position

and ('s, 'r) _menhir_cell1_sexpr = 
  | MenhirCell1_sexpr of 's * ('s, 'r) _menhir_state * (Smtlib.sexpr)

and ('s, 'r) _menhir_cell1_smt_option = 
  | MenhirCell1_smt_option of 's * ('s, 'r) _menhir_state * (Smtlib.smt_option) * Lexing.position

and ('s, 'r) _menhir_cell1_sort = 
  | MenhirCell1_sort of 's * ('s, 'r) _menhir_state * (Smtlib.sort) * Lexing.position

and ('s, 'r) _menhir_cell1_sorted_var = 
  | MenhirCell1_sorted_var of 's * ('s, 'r) _menhir_state * (Smtlib.sorted_var)

and ('s, 'r) _menhir_cell1_symbol = 
  | MenhirCell1_symbol of 's * ('s, 'r) _menhir_state * (Smtlib.symbol) * Lexing.position * Lexing.position

and ('s, 'r) _menhir_cell1_term = 
  | MenhirCell1_term of 's * ('s, 'r) _menhir_state * (Smtlib.term) * Lexing.position

and ('s, 'r) _menhir_cell1_var_binding = 
  | MenhirCell1_var_binding of 's * ('s, 'r) _menhir_state * (Smtlib.var_binding)

and ('s, 'r) _menhir_cell1_AS = 
  | MenhirCell1_AS of 's * ('s, 'r) _menhir_state

and 's _menhir_cell0_ASSERT = 
  | MenhirCell0_ASSERT of 's * Lexing.position

and ('s, 'r) _menhir_cell1_BANG = 
  | MenhirCell1_BANG of 's * ('s, 'r) _menhir_state

and 's _menhir_cell0_CHECKSAT = 
  | MenhirCell0_CHECKSAT of 's * Lexing.position * Lexing.position

and 's _menhir_cell0_DECLARECONST = 
  | MenhirCell0_DECLARECONST of 's * Lexing.position

and 's _menhir_cell0_DECLAREFUN = 
  | MenhirCell0_DECLAREFUN of 's * Lexing.position

and 's _menhir_cell0_DECLARESORT = 
  | MenhirCell0_DECLARESORT of 's * Lexing.position

and 's _menhir_cell0_DEFINEFUN = 
  | MenhirCell0_DEFINEFUN of 's * Lexing.position

and 's _menhir_cell0_DEFINEFUNREC = 
  | MenhirCell0_DEFINEFUNREC of 's * Lexing.position

and 's _menhir_cell0_DEFINESORT = 
  | MenhirCell0_DEFINESORT of 's * Lexing.position

and 's _menhir_cell0_ECHO = 
  | MenhirCell0_ECHO of 's * Lexing.position

and ('s, 'r) _menhir_cell1_EXISTS = 
  | MenhirCell1_EXISTS of 's * ('s, 'r) _menhir_state

and 's _menhir_cell0_EXIT = 
  | MenhirCell0_EXIT of 's * Lexing.position * Lexing.position

and ('s, 'r) _menhir_cell1_FORALL = 
  | MenhirCell1_FORALL of 's * ('s, 'r) _menhir_state

and 's _menhir_cell0_GETASSERTIONS = 
  | MenhirCell0_GETASSERTIONS of 's * Lexing.position * Lexing.position

and 's _menhir_cell0_GETASSIGNMENT = 
  | MenhirCell0_GETASSIGNMENT of 's * Lexing.position * Lexing.position

and 's _menhir_cell0_GETINFO = 
  | MenhirCell0_GETINFO of 's * Lexing.position

and 's _menhir_cell0_GETMODEL = 
  | MenhirCell0_GETMODEL of 's * Lexing.position * Lexing.position

and 's _menhir_cell0_GETOPTION = 
  | MenhirCell0_GETOPTION of 's * Lexing.position

and 's _menhir_cell0_GETPROOF = 
  | MenhirCell0_GETPROOF of 's * Lexing.position * Lexing.position

and 's _menhir_cell0_GETUNSATASSUMPTIONS = 
  | MenhirCell0_GETUNSATASSUMPTIONS of 's * Lexing.position * Lexing.position

and 's _menhir_cell0_GETUNSATCORE = 
  | MenhirCell0_GETUNSATCORE of 's * Lexing.position * Lexing.position

and 's _menhir_cell0_GETVALUE = 
  | MenhirCell0_GETVALUE of 's * Lexing.position

and ('s, 'r) _menhir_cell1_KEYWORD = 
  | MenhirCell1_KEYWORD of 's * ('s, 'r) _menhir_state * (
# 139 "src/smtlib/smtlib_parser.mly"
       (string)
# 850 "src/smtlib/smtlib_parser.ml"
) * Lexing.position * Lexing.position

and 's _menhir_cell0_KEYWORD = 
  | MenhirCell0_KEYWORD of 's * (
# 139 "src/smtlib/smtlib_parser.mly"
       (string)
# 857 "src/smtlib/smtlib_parser.ml"
) * Lexing.position * Lexing.position

and ('s, 'r) _menhir_cell1_LAMBDA = 
  | MenhirCell1_LAMBDA of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LET = 
  | MenhirCell1_LET of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LPAREN = 
  | MenhirCell1_LPAREN of 's * ('s, 'r) _menhir_state * Lexing.position

and 's _menhir_cell0_LPAREN = 
  | MenhirCell0_LPAREN of 's * Lexing.position

and 's _menhir_cell0_METAINFO = 
  | MenhirCell0_METAINFO of 's * Lexing.position

and 's _menhir_cell0_NUMERAL = 
  | MenhirCell0_NUMERAL of 's * (
# 132 "src/smtlib/smtlib_parser.mly"
       (Smtlib.numeral)
# 879 "src/smtlib/smtlib_parser.ml"
) * Lexing.position * Lexing.position

and ('s, 'r) _menhir_cell1_PAR = 
  | MenhirCell1_PAR of 's * ('s, 'r) _menhir_state

and 's _menhir_cell0_POP = 
  | MenhirCell0_POP of 's * Lexing.position

and 's _menhir_cell0_PUSH = 
  | MenhirCell0_PUSH of 's * Lexing.position

and 's _menhir_cell0_RESET = 
  | MenhirCell0_RESET of 's * Lexing.position * Lexing.position

and 's _menhir_cell0_RESETASSERTIONS = 
  | MenhirCell0_RESETASSERTIONS of 's * Lexing.position * Lexing.position

and 's _menhir_cell0_RPAREN = 
  | MenhirCell0_RPAREN of 's * Lexing.position

and 's _menhir_cell0_SETINFO = 
  | MenhirCell0_SETINFO of 's * Lexing.position

and 's _menhir_cell0_SETLOGIC = 
  | MenhirCell0_SETLOGIC of 's * Lexing.position

and 's _menhir_cell0_SETOPTION = 
  | MenhirCell0_SETOPTION of 's * Lexing.position

and 's _menhir_cell0_STRING = 
  | MenhirCell0_STRING of 's * (
# 137 "src/smtlib/smtlib_parser.mly"
       (string)
# 913 "src/smtlib/smtlib_parser.ml"
) * Lexing.position * Lexing.position

and ('s, 'r) _menhir_cell1_UNDERSCORE = 
  | MenhirCell1_UNDERSCORE of 's * ('s, 'r) _menhir_state

and _menhir_box_value = 
  | MenhirBox_value of ((Smtlib.term * Smtlib.term) list) [@@unboxed]

and _menhir_box_script = 
  | MenhirBox_script of (Smtlib.script) [@@unboxed]

and _menhir_box_model = 
  | MenhirBox_model of (Smtlib.model) [@@unboxed]

and _menhir_box_ivalue = 
  | MenhirBox_ivalue of ((Smtlib.term * Smtlib.term) list) [@@unboxed]

let _menhir_action_004 =
  fun _endpos_kwd_ _startpos_kwd_ kwd ->
    let _endpos = _endpos_kwd_ in
    let _startpos = _startpos_kwd_ in
    (
# 412 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_attribute (AttrKeyword kwd) loc )
# 939 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.attribute))

let _menhir_action_005 =
  fun _endpos_attrval_ _startpos_kwd_ attrval kwd ->
    let _endpos = _endpos_attrval_ in
    let _startpos = _startpos_kwd_ in
    (
# 415 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_attribute (AttrKeywordValue (kwd, attrval)) loc )
# 950 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.attribute))

let _menhir_action_006 =
  fun _endpos_sc_ _startpos_sc_ sc ->
    let _endpos = _endpos_sc_ in
    let _startpos = _startpos_sc_ in
    (
# 385 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_attr_value (AttrValSpecConstant sc) loc )
# 961 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.attr_value))

let _menhir_action_007 =
  fun _endpos_symb_ _startpos_symb_ symb ->
    let _endpos = _endpos_symb_ in
    let _startpos = _startpos_symb_ in
    (
# 388 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_attr_value (AttrValSymbol symb) loc )
# 972 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.attr_value))

let _menhir_action_008 =
  fun _endpos__3_ _startpos__1_ sexprs ->
    let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    (
# 391 "src/smtlib/smtlib_parser.mly"
 ( let loc = mk_loc _startpos _endpos in
   mk_attr_value (AttrValSexpr sexprs) loc )
# 983 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.attr_value))

let _menhir_action_009 =
  fun polys so svars symb t ->
    (
# 273 "src/smtlib/smtlib_parser.mly"
  ( (symb, polys, svars, so, t) )
# 991 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.symbol * Smtlib.sorts option * Smtlib.sorted_vars * Smtlib.sort *
  Smtlib.term))

let _menhir_action_010 =
  fun _endpos_fd_ _startpos_fd_ fd ->
    let _endpos = _endpos_fd_ in
    let _startpos = _startpos_fd_ in
    (
# 278 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    let s, ps, svs, so, t = fd in
    mk_fun_def (FunDef (s, ps, svs, so, t)) loc )
# 1004 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.fun_def))

let _menhir_action_011 =
  fun _endpos__3_ _startpos__1_ fd ->
    let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    (
# 285 "src/smtlib/smtlib_parser.mly"
 ( let s, ps, svs, so, t = fd in
   let loc = mk_loc _startpos _endpos in
   mk_fun_rec_def (FunRecDef (s, ps, svs, so, t)) loc )
# 1016 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.fun_rec_def))

let _menhir_action_012 =
  fun _endpos_symb_ _startpos_symb_ symb ->
    let _endpos = _endpos_symb_ in
    let _startpos = _startpos_symb_ in
    (
# 316 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in mk_identifier (IdSymbol symb) loc )
# 1026 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.identifier))

let _menhir_action_013 =
  fun _endpos__5_ _startpos__1_ indexes symb ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    (
# 318 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_identifier (IdUnderscore (symb, indexes)) loc )
# 1037 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.identifier))

let _menhir_action_014 =
  fun _1 ->
    (
# 308 "src/smtlib/smtlib_parser.mly"
          ( IdxNum _1 )
# 1045 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.index))

let _menhir_action_015 =
  fun _1 _endpos__1_ _startpos__1_ ->
    let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    (
# 310 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    IdxSymbol (mk_symbol (SimpleSymbol _1) loc) )
# 1056 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.index))

let _menhir_action_016 =
  fun _endpos_kwd_ _startpos_kwd_ kwd ->
    let _endpos = _endpos_kwd_ in
    let _startpos = _startpos_kwd_ in
    (
# 427 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_info_flag (InfoFlagKeyword kwd) loc )
# 1067 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.info_flag))

let _menhir_action_017 =
  fun t v ->
    (
# 173 "src/smtlib/smtlib_parser.mly"
    ( [ t, v ] )
# 1075 "src/smtlib/smtlib_parser.ml"
     : ((Smtlib.term * Smtlib.term) list))

let _menhir_action_018 =
  fun ts ->
    (
# 176 "src/smtlib/smtlib_parser.mly"
  ( ts )
# 1083 "src/smtlib/smtlib_parser.ml"
     : ((Smtlib.term * Smtlib.term) list))

let _menhir_action_019 =
  fun () ->
    (
# 178 "src/smtlib/smtlib_parser.mly"
  ( [] )
# 1091 "src/smtlib/smtlib_parser.ml"
     : ((Smtlib.term * Smtlib.term) list))

let _menhir_action_020 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1099 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_021 =
  fun _endpos_t_ _startpos__1_inlined1_ t xs ->
    let x =
      let x =
        let _startpos__1_ = _startpos__1_inlined1_ in
        let _endpos = _endpos_t_ in
        let _startpos = _startpos__1_ in
        
# 189 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in mk_command (CmdAssert t) loc )
# 1112 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1118 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1124 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_022 =
  fun _endpos__1_inlined1_ _startpos__1_inlined1_ xs ->
    let x =
      let x =
        let (_endpos__1_, _startpos__1_) = (_endpos__1_inlined1_, _startpos__1_inlined1_) in
        let _endpos = _endpos__1_ in
        let _startpos = _startpos__1_ in
        
# 191 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in mk_command CmdCheckSat loc )
# 1137 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1143 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1149 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_023 =
  fun _endpos_so_ _startpos__1_inlined1_ so symb xs ->
    let x =
      let x =
        let _startpos__1_ = _startpos__1_inlined1_ in
        let _endpos = _endpos_so_ in
        let _startpos = _startpos__1_ in
        
# 193 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdDeclareConst(symb, so)) loc )
# 1163 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1169 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1175 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_024 =
  fun _endpos_so_ _startpos__1_inlined1_ polys so sorts symb xs ->
    let x =
      let x =
        let _startpos__1_ = _startpos__1_inlined1_ in
        let _endpos = _endpos_so_ in
        let _startpos = _startpos__1_ in
        
# 197 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdDeclareFun (symb, polys, sorts, so)) loc )
# 1189 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1195 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1201 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_025 =
  fun _endpos_num_ _startpos__1_inlined1_ num symb xs ->
    let x =
      let x =
        let _startpos__1_ = _startpos__1_inlined1_ in
        let _endpos = _endpos_num_ in
        let _startpos = _startpos__1_ in
        
# 200 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdDeclareSort(symb, num)) loc )
# 1215 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1221 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1227 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_026 =
  fun _endpos_fdef_ _startpos__1_inlined1_ fdef xs ->
    let x =
      let x =
        let _startpos__1_ = _startpos__1_inlined1_ in
        let _endpos = _endpos_fdef_ in
        let _startpos = _startpos__1_ in
        
# 203 "src/smtlib/smtlib_parser.mly"
 ( let loc = mk_loc _startpos _endpos in
   mk_command (CmdDefineFun fdef) loc )
# 1241 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1247 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1253 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_027 =
  fun _endpos__4_ _startpos__1_inlined1_ frdefs xs ->
    let x =
      let x =
        let _startpos__1_ = _startpos__1_inlined1_ in
        let _endpos = _endpos__4_ in
        let _startpos = _startpos__1_ in
        
# 206 "src/smtlib/smtlib_parser.mly"
 ( let loc = mk_loc _startpos _endpos in
   mk_command (CmdDefineFunRec frdefs) loc )
# 1267 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1273 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1279 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_028 =
  fun _endpos_so_ _startpos__1_inlined1_ so symb symbs xs ->
    let x =
      let x =
        let _startpos__1_ = _startpos__1_inlined1_ in
        let _endpos = _endpos_so_ in
        let _startpos = _startpos__1_ in
        
# 209 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdDefineSort (symb, symbs, so)) loc )
# 1293 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1299 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1305 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_029 =
  fun _endpos_s_ _startpos__1_inlined1_ s xs ->
    let x =
      let x =
        let _startpos__1_ = _startpos__1_inlined1_ in
        let _endpos = _endpos_s_ in
        let _startpos = _startpos__1_ in
        
# 212 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdEcho s) loc )
# 1319 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1325 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1331 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_030 =
  fun _endpos__1_inlined1_ _startpos__1_inlined1_ xs ->
    let x =
      let x =
        let (_endpos__1_, _startpos__1_) = (_endpos__1_inlined1_, _startpos__1_inlined1_) in
        let _endpos = _endpos__1_ in
        let _startpos = _startpos__1_ in
        
# 215 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command CmdExit loc )
# 1345 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1351 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1357 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_031 =
  fun _endpos__1_inlined1_ _startpos__1_inlined1_ xs ->
    let x =
      let x =
        let (_endpos__1_, _startpos__1_) = (_endpos__1_inlined1_, _startpos__1_inlined1_) in
        let _endpos = _endpos__1_ in
        let _startpos = _startpos__1_ in
        
# 218 "src/smtlib/smtlib_parser.mly"
    ( let loc = mk_loc _startpos _endpos in
      mk_command CmdGetAssertions loc )
# 1371 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1377 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1383 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_032 =
  fun _endpos__1_inlined1_ _startpos__1_inlined1_ xs ->
    let x =
      let x =
        let (_endpos__1_, _startpos__1_) = (_endpos__1_inlined1_, _startpos__1_inlined1_) in
        let _endpos = _endpos__1_ in
        let _startpos = _startpos__1_ in
        
# 221 "src/smtlib/smtlib_parser.mly"
    ( let loc = mk_loc _startpos _endpos in
      mk_command CmdGetAssignment loc )
# 1397 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1403 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1409 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_033 =
  fun _endpos_iflag_ _startpos__1_inlined1_ iflag xs ->
    let x =
      let x =
        let _startpos__1_ = _startpos__1_inlined1_ in
        let _endpos = _endpos_iflag_ in
        let _startpos = _startpos__1_ in
        
# 224 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdGetInfo iflag) loc )
# 1423 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1429 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1435 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_034 =
  fun _endpos__1_inlined1_ _startpos__1_inlined1_ xs ->
    let x =
      let x =
        let (_endpos__1_, _startpos__1_) = (_endpos__1_inlined1_, _startpos__1_inlined1_) in
        let _endpos = _endpos__1_ in
        let _startpos = _startpos__1_ in
        
# 227 "src/smtlib/smtlib_parser.mly"
    ( let loc = mk_loc _startpos _endpos in
      mk_command CmdGetModel loc )
# 1449 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1455 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1461 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_035 =
  fun _endpos_kwd_ _startpos__1_inlined1_ kwd xs ->
    let x =
      let x =
        let _startpos__1_ = _startpos__1_inlined1_ in
        let _endpos = _endpos_kwd_ in
        let _startpos = _startpos__1_ in
        
# 230 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdGetOption kwd) loc )
# 1475 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1481 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1487 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_036 =
  fun _endpos__1_inlined1_ _startpos__1_inlined1_ xs ->
    let x =
      let x =
        let (_endpos__1_, _startpos__1_) = (_endpos__1_inlined1_, _startpos__1_inlined1_) in
        let _endpos = _endpos__1_ in
        let _startpos = _startpos__1_ in
        
# 233 "src/smtlib/smtlib_parser.mly"
    ( let loc = mk_loc _startpos _endpos in
      mk_command CmdReset loc )
# 1501 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1507 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1513 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_037 =
  fun _endpos__1_inlined1_ _startpos__1_inlined1_ xs ->
    let x =
      let x =
        let (_endpos__1_, _startpos__1_) = (_endpos__1_inlined1_, _startpos__1_inlined1_) in
        let _endpos = _endpos__1_ in
        let _startpos = _startpos__1_ in
        
# 236 "src/smtlib/smtlib_parser.mly"
    ( let loc = mk_loc _startpos _endpos in
      mk_command CmdResetAssertions loc )
# 1527 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1533 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1539 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_038 =
  fun _endpos__1_inlined1_ _startpos__1_inlined1_ xs ->
    let x =
      let x =
        let (_endpos__1_, _startpos__1_) = (_endpos__1_inlined1_, _startpos__1_inlined1_) in
        let _endpos = _endpos__1_ in
        let _startpos = _startpos__1_ in
        
# 239 "src/smtlib/smtlib_parser.mly"
    ( let loc = mk_loc _startpos _endpos in
      mk_command CmdGetProof loc )
# 1553 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1559 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1565 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_039 =
  fun _endpos__1_inlined1_ _startpos__1_inlined1_ xs ->
    let x =
      let x =
        let (_endpos__1_, _startpos__1_) = (_endpos__1_inlined1_, _startpos__1_inlined1_) in
        let _endpos = _endpos__1_ in
        let _startpos = _startpos__1_ in
        
# 242 "src/smtlib/smtlib_parser.mly"
    ( let loc = mk_loc _startpos _endpos in
      mk_command CmdGetUnsatCore loc )
# 1579 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1585 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1591 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_040 =
  fun _endpos__1_inlined1_ _startpos__1_inlined1_ xs ->
    let x =
      let x =
        let (_endpos__1_, _startpos__1_) = (_endpos__1_inlined1_, _startpos__1_inlined1_) in
        let _endpos = _endpos__1_ in
        let _startpos = _startpos__1_ in
        
# 245 "src/smtlib/smtlib_parser.mly"
    ( let loc = mk_loc _startpos _endpos in
      mk_command CmdGetUnsatAssumptions loc )
# 1605 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1611 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1617 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_041 =
  fun _endpos__4_ _startpos__1_inlined1_ ts xs ->
    let x =
      let x =
        let _startpos__1_ = _startpos__1_inlined1_ in
        let _endpos = _endpos__4_ in
        let _startpos = _startpos__1_ in
        
# 248 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdGetValue ts) loc )
# 1631 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1637 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1643 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_042 =
  fun _endpos_attr_ _startpos__1_inlined1_ attr xs ->
    let x =
      let x =
        let _startpos__1_ = _startpos__1_inlined1_ in
        let _endpos = _endpos_attr_ in
        let _startpos = _startpos__1_ in
        
# 251 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdMetaInfo attr) loc )
# 1657 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1663 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1669 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_043 =
  fun _endpos_num_ _startpos__1_inlined1_ num xs ->
    let x =
      let x =
        let _startpos__1_ = _startpos__1_inlined1_ in
        let _endpos = _endpos_num_ in
        let _startpos = _startpos__1_ in
        
# 254 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdPop num) loc )
# 1683 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1689 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1695 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_044 =
  fun _endpos_num_ _startpos__1_inlined1_ num xs ->
    let x =
      let x =
        let _startpos__1_ = _startpos__1_inlined1_ in
        let _endpos = _endpos_num_ in
        let _startpos = _startpos__1_ in
        
# 257 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdPush num) loc )
# 1709 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1715 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1721 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_045 =
  fun _endpos_attr_ _startpos__1_inlined1_ attr xs ->
    let x =
      let x =
        let _startpos__1_ = _startpos__1_inlined1_ in
        let _endpos = _endpos_attr_ in
        let _startpos = _startpos__1_ in
        
# 260 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdSetInfo attr) loc )
# 1735 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1741 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1747 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_046 =
  fun _endpos_symb_ _startpos__1_inlined1_ symb xs ->
    let x =
      let x =
        let _startpos__1_ = _startpos__1_inlined1_ in
        let _endpos = _endpos_symb_ in
        let _startpos = _startpos__1_ in
        
# 263 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdSetLogic symb) loc )
# 1761 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1767 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1773 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_047 =
  fun _endpos_sopt_ _startpos__1_inlined1_ sopt xs ->
    let x =
      let x =
        let _startpos__1_ = _startpos__1_inlined1_ in
        let _endpos = _endpos_sopt_ in
        let _startpos = _startpos__1_ in
        
# 266 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_command (CmdSetOption sopt) loc )
# 1787 "src/smtlib/smtlib_parser.ml"
        
      in
      
# 205 "<standard.mly>"
    ( x )
# 1793 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1799 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.commands))

let _menhir_action_048 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1807 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.sexprs))

let _menhir_action_049 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1815 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.sexprs))

let _menhir_action_050 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1823 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.sorts))

let _menhir_action_051 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1831 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.sorts))

let _menhir_action_052 =
  fun () ->
    (
# 216 "<standard.mly>"
    ( [] )
# 1839 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.sorted_vars))

let _menhir_action_053 =
  fun x xs ->
    (
# 219 "<standard.mly>"
    ( x :: xs )
# 1847 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.sorted_vars))

let _menhir_action_054 =
  fun _endpos__2_ _startpos__1_ x ->
    let commands =
      let x = 
# 188 "<standard.mly>"
    ( x )
# 1856 "src/smtlib/smtlib_parser.ml"
       in
      
# 205 "<standard.mly>"
    ( x )
# 1861 "src/smtlib/smtlib_parser.ml"
      
    in
    let _startpos_commands_ = _startpos__1_ in
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_commands_ in
    (
# 166 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_model commands loc
   )
# 1872 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.model))

let _menhir_action_055 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1880 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.attributes))

let _menhir_action_056 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1888 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.attributes))

let _menhir_action_057 =
  fun x y ->
    let x =
      let x = 
# 172 "<standard.mly>"
    ( (x, y) )
# 1897 "src/smtlib/smtlib_parser.ml"
       in
      
# 205 "<standard.mly>"
    ( x )
# 1902 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1908 "src/smtlib/smtlib_parser.ml"
     : ((Smtlib.term * Smtlib.term) list))

let _menhir_action_058 =
  fun x xs y ->
    let x =
      let x = 
# 172 "<standard.mly>"
    ( (x, y) )
# 1917 "src/smtlib/smtlib_parser.ml"
       in
      
# 205 "<standard.mly>"
    ( x )
# 1922 "src/smtlib/smtlib_parser.ml"
      
    in
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1928 "src/smtlib/smtlib_parser.ml"
     : ((Smtlib.term * Smtlib.term) list))

let _menhir_action_059 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1936 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.fun_rec_defs))

let _menhir_action_060 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1944 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.fun_rec_defs))

let _menhir_action_061 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1952 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.indexes))

let _menhir_action_062 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1960 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.indexes))

let _menhir_action_063 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1968 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.sorts))

let _menhir_action_064 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1976 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.sorts))

let _menhir_action_065 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 1984 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.sorted_vars))

let _menhir_action_066 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 1992 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.sorted_vars))

let _menhir_action_067 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 2000 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.symbols))

let _menhir_action_068 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 2008 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.symbols))

let _menhir_action_069 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 2016 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.terms))

let _menhir_action_070 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 2024 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.terms))

let _menhir_action_071 =
  fun x ->
    (
# 228 "<standard.mly>"
    ( [ x ] )
# 2032 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.var_bindings))

let _menhir_action_072 =
  fun x xs ->
    (
# 231 "<standard.mly>"
    ( x :: xs )
# 2040 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.var_bindings))

let _menhir_action_073 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 2048 "src/smtlib/smtlib_parser.ml"
     : (unit option))

let _menhir_action_074 =
  fun x ->
    (
# 114 "<standard.mly>"
    ( Some x )
# 2056 "src/smtlib/smtlib_parser.ml"
     : (unit option))

let _menhir_action_075 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 2064 "src/smtlib/smtlib_parser.ml"
     : (string option))

let _menhir_action_076 =
  fun x ->
    (
# 114 "<standard.mly>"
    ( Some x )
# 2072 "src/smtlib/smtlib_parser.ml"
     : (string option))

let _menhir_action_077 =
  fun () ->
    (
# 111 "<standard.mly>"
    ( None )
# 2080 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.sorts option))

let _menhir_action_078 =
  fun x ->
    (
# 114 "<standard.mly>"
    ( Some x )
# 2088 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.sorts option))

let _menhir_action_079 =
  fun sorts ->
    (
# 291 "src/smtlib/smtlib_parser.mly"
                                 ( sorts )
# 2096 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.sorts))

let _menhir_action_080 =
  fun _endpos_id_ _startpos_id_ id ->
    let _endpos = _endpos_id_ in
    let _startpos = _startpos_id_ in
    (
# 358 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_qual_identifier (QualIdentifierIdentifier id) loc )
# 2107 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.qual_identifier))

let _menhir_action_081 =
  fun _endpos__5_ _startpos__1_ id so ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    (
# 361 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_qual_identifier (QualIdentifierAs (id, so)) loc )
# 2118 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.qual_identifier))

let _menhir_action_082 =
  fun _endpos__2_ _startpos_commands_ commands ->
    let _endpos = _endpos__2_ in
    let _startpos = _startpos_commands_ in
    (
# 158 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_script commands loc )
# 2129 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.script))

let _menhir_action_083 =
  fun _endpos_sc_ _startpos_sc_ sc ->
    let _endpos = _endpos_sc_ in
    let _startpos = _startpos_sc_ in
    (
# 397 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_sexpr (SexprConstant sc) loc )
# 2140 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.sexpr))

let _menhir_action_084 =
  fun _endpos_symb_ _startpos_symb_ symb ->
    let _endpos = _endpos_symb_ in
    let _startpos = _startpos_symb_ in
    (
# 400 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_sexpr (SexprSymbol symb) loc )
# 2151 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.sexpr))

let _menhir_action_085 =
  fun _endpos_kwd_ _startpos_kwd_ kwd ->
    let _endpos = _endpos_kwd_ in
    let _startpos = _startpos_kwd_ in
    (
# 403 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_sexpr (SexprKeyword kwd) loc )
# 2162 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.sexpr))

let _menhir_action_086 =
  fun _endpos__3_ _startpos__1_ sexprs ->
    let _endpos = _endpos__3_ in
    let _startpos = _startpos__1_ in
    (
# 406 "src/smtlib/smtlib_parser.mly"
 ( let loc = mk_loc _startpos _endpos in
   mk_sexpr (SexprParens sexprs) loc )
# 2173 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.sexpr))

let _menhir_action_087 =
  fun _endpos_attr_ _startpos_attr_ attr ->
    let _endpos = _endpos_attr_ in
    let _startpos = _startpos_attr_ in
    (
# 421 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_smt_option (OptionAttribute attr) loc )
# 2184 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.smt_option))

let _menhir_action_088 =
  fun _endpos_id_ _startpos_id_ id ->
    let _endpos = _endpos_id_ in
    let _startpos = _startpos_id_ in
    (
# 302 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in mk_sort (SortIdentifier id) loc )
# 2194 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.sort))

let _menhir_action_089 =
  fun _endpos__4_ _startpos__1_ id sorts ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    (
# 304 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in mk_sort (SortFun (id, sorts)) loc )
# 2204 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.sort))

let _menhir_action_090 =
  fun _endpos__4_ _startpos__1_ so symb ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    (
# 296 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_sorted_var (SortedVar (symb, so)) loc )
# 2215 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.sorted_var))

let _menhir_action_091 =
  fun _1 ->
    (
# 372 "src/smtlib/smtlib_parser.mly"
          ( CstBinary _1 )
# 2223 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.constant))

let _menhir_action_092 =
  fun _1 ->
    (
# 373 "src/smtlib/smtlib_parser.mly"
          ( CstDecimal _1 )
# 2231 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.constant))

let _menhir_action_093 =
  fun _1 ->
    (
# 374 "src/smtlib/smtlib_parser.mly"
          ( CstNumeral _1 )
# 2239 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.constant))

let _menhir_action_094 =
  fun _1 ->
    (
# 375 "src/smtlib/smtlib_parser.mly"
          ( CstString _1 )
# 2247 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.constant))

let _menhir_action_095 =
  fun _1 ->
    (
# 376 "src/smtlib/smtlib_parser.mly"
          ( CstBool _1 )
# 2255 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.constant))

let _menhir_action_096 =
  fun _1 ->
    (
# 377 "src/smtlib/smtlib_parser.mly"
              ( CstHexadecimal _1 )
# 2263 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.constant))

let _menhir_action_097 =
  fun size value ->
    (
# 380 "src/smtlib/smtlib_parser.mly"
  ( CstDecimalSize(value, size) )
# 2271 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.constant))

let _menhir_action_098 =
  fun _1 _endpos__1_ _startpos__1_ ->
    let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    (
# 324 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in mk_symbol (SimpleSymbol _1) loc )
# 2281 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.symbol))

let _menhir_action_099 =
  fun _1 _endpos__1_ _startpos__1_ ->
    let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    (
# 326 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in mk_symbol (QuotedSymbol _1) loc )
# 2291 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.symbol))

let _menhir_action_100 =
  fun _1 _endpos__1_ _startpos__1_ ->
    let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    (
# 331 "src/smtlib/smtlib_parser.mly"
 ( let loc = mk_loc _startpos _endpos in
   mk_term (TermSpecConstant _1) loc )
# 2302 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.term))

let _menhir_action_101 =
  fun _1 _endpos__1_ _startpos__1_ ->
    let _endpos = _endpos__1_ in
    let _startpos = _startpos__1_ in
    (
# 334 "src/smtlib/smtlib_parser.mly"
 ( let loc = mk_loc _startpos _endpos in
   mk_term (TermQualIdentifier _1) loc )
# 2313 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.term))

let _menhir_action_102 =
  fun _endpos__4_ _startpos__1_ qualid ts ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    (
# 337 "src/smtlib/smtlib_parser.mly"
 ( let loc = mk_loc _startpos _endpos in
   mk_term (TermQualIdentifierTerms(qualid, ts)) loc )
# 2324 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.term))

let _menhir_action_103 =
  fun _endpos__7_ _startpos__1_ t vbindings ->
    let _endpos = _endpos__7_ in
    let _startpos = _startpos__1_ in
    (
# 340 "src/smtlib/smtlib_parser.mly"
 ( let loc = mk_loc _startpos _endpos in
   mk_term (TermLetTerm (vbindings, t)) loc )
# 2335 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.term))

let _menhir_action_104 =
  fun _endpos__7_ _startpos__1_ svars t ->
    let _endpos = _endpos__7_ in
    let _startpos = _startpos__1_ in
    (
# 343 "src/smtlib/smtlib_parser.mly"
 ( let loc = mk_loc _startpos _endpos in
   mk_term (TermForallTerm (svars, t)) loc)
# 2346 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.term))

let _menhir_action_105 =
  fun _endpos__7_ _startpos__1_ svars t ->
    let _endpos = _endpos__7_ in
    let _startpos = _startpos__1_ in
    (
# 346 "src/smtlib/smtlib_parser.mly"
 ( let loc = mk_loc _startpos _endpos in
   mk_term (TermExistsTerm (svars, t)) loc )
# 2357 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.term))

let _menhir_action_106 =
  fun _endpos__5_ _startpos__1_ attrs t ->
    let _endpos = _endpos__5_ in
    let _startpos = _startpos__1_ in
    (
# 349 "src/smtlib/smtlib_parser.mly"
 ( let loc = mk_loc _startpos _endpos in
   mk_term (TermAnnotatedTerm(t, attrs)) loc )
# 2368 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.term))

let _menhir_action_107 =
  fun _endpos__7_ _startpos__1_ svars t ->
    let _endpos = _endpos__7_ in
    let _startpos = _startpos__1_ in
    (
# 352 "src/smtlib/smtlib_parser.mly"
 ( let loc = mk_loc _startpos _endpos in
   mk_term (TermLambdaTerm(svars, t)) loc )
# 2379 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.term))

let _menhir_action_108 =
  fun v ->
    (
# 183 "src/smtlib/smtlib_parser.mly"
  ( v )
# 2387 "src/smtlib/smtlib_parser.ml"
     : ((Smtlib.term * Smtlib.term) list))

let _menhir_action_109 =
  fun _endpos__4_ _startpos__1_ symb t ->
    let _endpos = _endpos__4_ in
    let _startpos = _startpos__1_ in
    (
# 367 "src/smtlib/smtlib_parser.mly"
  ( let loc = mk_loc _startpos _endpos in
    mk_var_binding (VarBinding (symb, t)) loc )
# 2398 "src/smtlib/smtlib_parser.ml"
     : (Smtlib.var_binding))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | AS ->
        "AS"
    | ASSERT ->
        "ASSERT"
    | BANG ->
        "BANG"
    | BINARY _ ->
        "BINARY"
    | BOOL _ ->
        "BOOL"
    | BV_NUMERAL _ ->
        "BV_NUMERAL"
    | CHECKSAT ->
        "CHECKSAT"
    | DECIMAL _ ->
        "DECIMAL"
    | DECLARECONST ->
        "DECLARECONST"
    | DECLAREFUN ->
        "DECLAREFUN"
    | DECLARESORT ->
        "DECLARESORT"
    | DEFINEFUN ->
        "DEFINEFUN"
    | DEFINEFUNREC ->
        "DEFINEFUNREC"
    | DEFINESORT ->
        "DEFINESORT"
    | ECHO ->
        "ECHO"
    | EOF ->
        "EOF"
    | EXISTS ->
        "EXISTS"
    | EXIT ->
        "EXIT"
    | FORALL ->
        "FORALL"
    | GETASSERTIONS ->
        "GETASSERTIONS"
    | GETASSIGNMENT ->
        "GETASSIGNMENT"
    | GETINFO ->
        "GETINFO"
    | GETMODEL ->
        "GETMODEL"
    | GETOPTION ->
        "GETOPTION"
    | GETPROOF ->
        "GETPROOF"
    | GETUNSATASSUMPTIONS ->
        "GETUNSATASSUMPTIONS"
    | GETUNSATCORE ->
        "GETUNSATCORE"
    | GETVALUE ->
        "GETVALUE"
    | HEXADECIMAL _ ->
        "HEXADECIMAL"
    | KEYWORD _ ->
        "KEYWORD"
    | LAMBDA ->
        "LAMBDA"
    | LET ->
        "LET"
    | LPAREN ->
        "LPAREN"
    | METAINFO ->
        "METAINFO"
    | MODEL ->
        "MODEL"
    | NUMERAL _ ->
        "NUMERAL"
    | PAR ->
        "PAR"
    | POP ->
        "POP"
    | PUSH ->
        "PUSH"
    | QUOTEDSYMBOL _ ->
        "QUOTEDSYMBOL"
    | RESET ->
        "RESET"
    | RESETASSERTIONS ->
        "RESETASSERTIONS"
    | RPAREN ->
        "RPAREN"
    | SETINFO ->
        "SETINFO"
    | SETLOGIC ->
        "SETLOGIC"
    | SETOPTION ->
        "SETOPTION"
    | STRING _ ->
        "STRING"
    | SYMBOL _ ->
        "SYMBOL"
    | UNDERSCORE ->
        "UNDERSCORE"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37"]
  
  let _menhir_run_119 : type  ttv_stack. ttv_stack -> _ -> _menhir_box_ivalue =
    fun _menhir_stack _v ->
      MenhirBox_ivalue _v
  
  let _menhir_run_271 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> _ -> _menhir_box_script =
    fun _menhir_stack _menhir_lexbuf _startpos _v _tok ->
      match (_tok : MenhirBasics.token) with
      | EOF ->
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let (_endpos__2_, _startpos_commands_, commands) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_082 _endpos__2_ _startpos_commands_ commands in
          MenhirBox_script _v
      | _ ->
          _eRR ()
  
  let _menhir_run_265 : type  ttv_stack. ttv_stack _menhir_cell0_LPAREN _menhir_cell0_option_MODEL_ -> _ -> _ -> _ -> _ -> _menhir_box_model =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | EOF ->
              let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
              let MenhirCell0_option_MODEL_ (_menhir_stack, _) = _menhir_stack in
              let MenhirCell0_LPAREN (_menhir_stack, _startpos__1_) = _menhir_stack in
              let (_endpos__2_, x) = (_endpos_0, _v) in
              let _v = _menhir_action_054 _endpos__2_ _startpos__1_ x in
              MenhirBox_model _v
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  let rec _menhir_run_156 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_METAINFO, ttv_result) _menhir_cell1_attribute _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_attribute (_menhir_stack, _, attr, _, _endpos_attr_) = _menhir_stack in
      let MenhirCell0_METAINFO (_menhir_stack, _startpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_042 _endpos_attr_ _startpos__1_inlined1_ attr xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_goto_list_delimited_LPAREN_command_RPAREN__ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState269 ->
          _menhir_run_271 _menhir_stack _menhir_lexbuf _startpos _v _tok
      | MenhirState123 ->
          _menhir_run_265 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState263 ->
          _menhir_run_264 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState259 ->
          _menhir_run_260 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState256 ->
          _menhir_run_257 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState251 ->
          _menhir_run_252 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState240 ->
          _menhir_run_241 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState234 ->
          _menhir_run_235 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState228 ->
          _menhir_run_229 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState205 ->
          _menhir_run_206 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState195 ->
          _menhir_run_196 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState191 ->
          _menhir_run_192 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState188 ->
          _menhir_run_189 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState185 ->
          _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState182 ->
          _menhir_run_183 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState177 ->
          _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState174 ->
          _menhir_run_175 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState170 ->
          _menhir_run_171 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState167 ->
          _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState164 ->
          _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState161 ->
          _menhir_run_162 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState155 ->
          _menhir_run_156 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState151 ->
          _menhir_run_152 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState147 ->
          _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState142 ->
          _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState139 ->
          _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState136 ->
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState132 ->
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState127 ->
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_264 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_ASSERT, ttv_result) _menhir_cell1_term _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_term (_menhir_stack, _, t, _endpos_t_) = _menhir_stack in
      let MenhirCell0_ASSERT (_menhir_stack, _startpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_021 _endpos_t_ _startpos__1_inlined1_ t xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_260 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_CHECKSAT _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_CHECKSAT (_menhir_stack, _startpos__1_inlined1_, _endpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_022 _endpos__1_inlined1_ _startpos__1_inlined1_ xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_257 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_DECLARECONST, ttv_result) _menhir_cell1_symbol, ttv_result) _menhir_cell1_sort _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_sort (_menhir_stack, _, so, _endpos_so_) = _menhir_stack in
      let MenhirCell1_symbol (_menhir_stack, _, symb, _, _) = _menhir_stack in
      let MenhirCell0_DECLARECONST (_menhir_stack, _startpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_023 _endpos_so_ _startpos__1_inlined1_ so symb xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_252 : type  ttv_stack ttv_result. (((((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_DECLAREFUN, ttv_result) _menhir_cell1_symbol, ttv_result) _menhir_cell1_option_poly_parameters_ _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_list_sort_ _menhir_cell0_RPAREN, ttv_result) _menhir_cell1_sort _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_sort (_menhir_stack, _, so, _endpos_so_) = _menhir_stack in
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_list_sort_ (_menhir_stack, _, sorts) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_option_poly_parameters_ (_menhir_stack, _, polys) = _menhir_stack in
      let MenhirCell1_symbol (_menhir_stack, _, symb, _, _) = _menhir_stack in
      let MenhirCell0_DECLAREFUN (_menhir_stack, _startpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_024 _endpos_so_ _startpos__1_inlined1_ polys so sorts symb xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_241 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_DECLARESORT, ttv_result) _menhir_cell1_symbol _menhir_cell0_NUMERAL _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_NUMERAL (_menhir_stack, num, _, _endpos_num_) = _menhir_stack in
      let MenhirCell1_symbol (_menhir_stack, _, symb, _, _) = _menhir_stack in
      let MenhirCell0_DECLARESORT (_menhir_stack, _startpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_025 _endpos_num_ _startpos__1_inlined1_ num symb xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_235 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_DEFINEFUN, ttv_result) _menhir_cell1_fun_nonrec_def _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_fun_nonrec_def (_menhir_stack, _, fdef, _endpos_fdef_) = _menhir_stack in
      let MenhirCell0_DEFINEFUN (_menhir_stack, _startpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_026 _endpos_fdef_ _startpos__1_inlined1_ fdef xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_229 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_DEFINEFUNREC _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_nonempty_list_fun_rec_def_ _menhir_cell0_RPAREN _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_RPAREN (_menhir_stack, _endpos__4_) = _menhir_stack in
      let MenhirCell1_nonempty_list_fun_rec_def_ (_menhir_stack, _, frdefs) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_DEFINEFUNREC (_menhir_stack, _startpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_027 _endpos__4_ _startpos__1_inlined1_ frdefs xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_206 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_DEFINESORT, ttv_result) _menhir_cell1_symbol _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_nonempty_list_symbol_ _menhir_cell0_RPAREN, ttv_result) _menhir_cell1_sort _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_sort (_menhir_stack, _, so, _endpos_so_) = _menhir_stack in
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_nonempty_list_symbol_ (_menhir_stack, _, symbs) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_symbol (_menhir_stack, _, symb, _, _) = _menhir_stack in
      let MenhirCell0_DEFINESORT (_menhir_stack, _startpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_028 _endpos_so_ _startpos__1_inlined1_ so symb symbs xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_196 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_ECHO _menhir_cell0_STRING _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_STRING (_menhir_stack, s, _, _endpos_s_) = _menhir_stack in
      let MenhirCell0_ECHO (_menhir_stack, _startpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_029 _endpos_s_ _startpos__1_inlined1_ s xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_192 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_EXIT _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_EXIT (_menhir_stack, _startpos__1_inlined1_, _endpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_030 _endpos__1_inlined1_ _startpos__1_inlined1_ xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_189 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_GETASSERTIONS _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_GETASSERTIONS (_menhir_stack, _startpos__1_inlined1_, _endpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_031 _endpos__1_inlined1_ _startpos__1_inlined1_ xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_186 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_GETASSIGNMENT _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_GETASSIGNMENT (_menhir_stack, _startpos__1_inlined1_, _endpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_032 _endpos__1_inlined1_ _startpos__1_inlined1_ xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_183 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_GETINFO _menhir_cell0_info_flag _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_info_flag (_menhir_stack, iflag, _endpos_iflag_) = _menhir_stack in
      let MenhirCell0_GETINFO (_menhir_stack, _startpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_033 _endpos_iflag_ _startpos__1_inlined1_ iflag xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_178 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_GETMODEL _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_GETMODEL (_menhir_stack, _startpos__1_inlined1_, _endpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_034 _endpos__1_inlined1_ _startpos__1_inlined1_ xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_175 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_GETOPTION _menhir_cell0_KEYWORD _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_KEYWORD (_menhir_stack, kwd, _, _endpos_kwd_) = _menhir_stack in
      let MenhirCell0_GETOPTION (_menhir_stack, _startpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_035 _endpos_kwd_ _startpos__1_inlined1_ kwd xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_171 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_GETPROOF _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_GETPROOF (_menhir_stack, _startpos__1_inlined1_, _endpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_038 _endpos__1_inlined1_ _startpos__1_inlined1_ xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_168 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_GETUNSATASSUMPTIONS _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_GETUNSATASSUMPTIONS (_menhir_stack, _startpos__1_inlined1_, _endpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_040 _endpos__1_inlined1_ _startpos__1_inlined1_ xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_165 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_GETUNSATCORE _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_GETUNSATCORE (_menhir_stack, _startpos__1_inlined1_, _endpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_039 _endpos__1_inlined1_ _startpos__1_inlined1_ xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_162 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_GETVALUE _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_nonempty_list_term_ _menhir_cell0_RPAREN _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_RPAREN (_menhir_stack, _endpos__4_) = _menhir_stack in
      let MenhirCell1_nonempty_list_term_ (_menhir_stack, _, ts) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_GETVALUE (_menhir_stack, _startpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_041 _endpos__4_ _startpos__1_inlined1_ ts xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_152 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_POP, ttv_result) _menhir_cell1_option_NUMERAL_ _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_option_NUMERAL_ (_menhir_stack, _, num, _endpos_num_) = _menhir_stack in
      let MenhirCell0_POP (_menhir_stack, _startpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_043 _endpos_num_ _startpos__1_inlined1_ num xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_148 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_PUSH, ttv_result) _menhir_cell1_option_NUMERAL_ _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_option_NUMERAL_ (_menhir_stack, _, num, _endpos_num_) = _menhir_stack in
      let MenhirCell0_PUSH (_menhir_stack, _startpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_044 _endpos_num_ _startpos__1_inlined1_ num xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_143 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_RESET _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_RESET (_menhir_stack, _startpos__1_inlined1_, _endpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_036 _endpos__1_inlined1_ _startpos__1_inlined1_ xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_140 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_RESETASSERTIONS _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell0_RESETASSERTIONS (_menhir_stack, _startpos__1_inlined1_, _endpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_037 _endpos__1_inlined1_ _startpos__1_inlined1_ xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_137 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_SETINFO, ttv_result) _menhir_cell1_attribute _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_attribute (_menhir_stack, _, attr, _, _endpos_attr_) = _menhir_stack in
      let MenhirCell0_SETINFO (_menhir_stack, _startpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_045 _endpos_attr_ _startpos__1_inlined1_ attr xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_133 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_SETLOGIC, ttv_result) _menhir_cell1_symbol _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_symbol (_menhir_stack, _, symb, _, _endpos_symb_) = _menhir_stack in
      let MenhirCell0_SETLOGIC (_menhir_stack, _startpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_046 _endpos_symb_ _startpos__1_inlined1_ symb xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_128 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_SETOPTION, ttv_result) _menhir_cell1_smt_option _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_smt_option (_menhir_stack, _, sopt, _endpos_sopt_) = _menhir_stack in
      let MenhirCell0_SETOPTION (_menhir_stack, _startpos__1_inlined1_) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_047 _endpos_sopt_ _startpos__1_inlined1_ sopt xs in
      _menhir_goto_list_delimited_LPAREN_command_RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _startpos__1_ _v _menhir_s _tok
  
  let _menhir_run_285 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_value =
    fun _menhir_stack _v _tok ->
      match (_tok : MenhirBasics.token) with
      | EOF ->
          let v = _v in
          let _v = _menhir_action_108 v in
          MenhirBox_value _v
      | _ ->
          _eRR ()
  
  let _menhir_goto_ivalue : type  ttv_stack ttv_result. ttv_stack -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState273 ->
          _menhir_run_285 _menhir_stack _v _tok
      | MenhirState000 ->
          _menhir_run_119 _menhir_stack _v
      | _ ->
          _menhir_fail ()
  
  let _menhir_run_278 : type  ttv_stack. ((ttv_stack, _menhir_box_value) _menhir_cell1_LPAREN _menhir_cell0_LPAREN, _menhir_box_value) _menhir_cell1_term -> _ -> _ -> _ -> _ -> _menhir_box_value =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RPAREN ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let MenhirCell1_term (_menhir_stack, _, t, _) = _menhir_stack in
              let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
              let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
              let v = _v in
              let _v = _menhir_action_017 t v in
              _menhir_goto_ivalue _menhir_stack _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  let _menhir_run_113 : type  ttv_stack. ((ttv_stack, _menhir_box_ivalue) _menhir_cell1_LPAREN _menhir_cell0_LPAREN, _menhir_box_ivalue) _menhir_cell1_term -> _ -> _ -> _ -> _ -> _menhir_box_ivalue =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RPAREN ->
              let MenhirCell1_term (_menhir_stack, _, t, _) = _menhir_stack in
              let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
              let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
              let v = _v in
              let _v = _menhir_action_017 t v in
              _menhir_goto_ivalue _menhir_stack _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  let _menhir_run_281 : type  ttv_stack. (ttv_stack, _menhir_box_value) _menhir_cell1_LPAREN _menhir_cell0_LPAREN -> _ -> _ -> _ -> _menhir_box_value =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let ts = _v in
          let _v = _menhir_action_018 ts in
          _menhir_goto_ivalue _menhir_stack _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  let _menhir_run_116 : type  ttv_stack. (ttv_stack, _menhir_box_ivalue) _menhir_cell1_LPAREN _menhir_cell0_LPAREN -> _ -> _ -> _ -> _menhir_box_ivalue =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
          let ts = _v in
          let _v = _menhir_action_018 ts in
          _menhir_goto_ivalue _menhir_stack _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  let rec _menhir_goto_nonempty_list_delimited_LPAREN_pair_term_term__RPAREN__ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState276 ->
          _menhir_run_281 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState003 ->
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState108 ->
          _menhir_run_110 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_110 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LPAREN, ttv_result) _menhir_cell1_term, ttv_result) _menhir_cell1_term _menhir_cell0_RPAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_term (_menhir_stack, _, y, _) = _menhir_stack in
      let MenhirCell1_term (_menhir_stack, _, x, _) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_058 x xs y in
      _menhir_goto_nonempty_list_delimited_LPAREN_pair_term_term__RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  let rec _menhir_run_004 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let (_endpos__1_, _startpos__1_, _1) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_098 _1 _endpos__1_ _startpos__1_ in
      _menhir_goto_symbol _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _menhir_s _tok
  
  and _menhir_goto_symbol : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState253 ->
          _menhir_run_254 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState242 ->
          _menhir_run_243 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState237 ->
          _menhir_run_238 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState232 ->
          _menhir_run_210 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState209 ->
          _menhir_run_210 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState200 ->
          _menhir_run_200 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState199 ->
          _menhir_run_200 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState197 ->
          _menhir_run_198 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState130 ->
          _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState081 ->
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState082 ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState088 ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState084 ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState057 ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState038 ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState276 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState277 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState261 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState254 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState249 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState246 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState245 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState222 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState221 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState212 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState203 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState158 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState003 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState112 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState111 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState008 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState109 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState101 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState102 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState020 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState079 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState076 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState070 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState064 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState058 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState052 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState039 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState026 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState029 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState028 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState027 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState023 ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState022 ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState009 ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_254 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_DECLARECONST as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_symbol (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v_0 ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState254
      | QUOTEDSYMBOL _v_1 ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState254
      | LPAREN ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState254
      | _ ->
          _eRR ()
  
  and _menhir_run_006 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let (_endpos__1_, _startpos__1_, _1) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_099 _1 _endpos__1_ _startpos__1_ in
      _menhir_goto_symbol _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_027 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos) in
      let _menhir_s = MenhirState027 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | UNDERSCORE ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | SYMBOL _v ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | QUOTEDSYMBOL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAREN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_022 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_UNDERSCORE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState022 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | QUOTEDSYMBOL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_024 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos) in
      let _menhir_s = MenhirState024 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | UNDERSCORE ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_243 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_DECLAREFUN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_symbol (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | PAR ->
          _menhir_run_211 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState243
      | LPAREN ->
          let _v_0 = _menhir_action_077 () in
          _menhir_run_244 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState243 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_211 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_symbol as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_PAR (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState212 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SYMBOL _v ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | QUOTEDSYMBOL _v ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LPAREN ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_244 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_DECLAREFUN, ttv_result) _menhir_cell1_symbol as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_option_poly_parameters_ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SYMBOL _v_0 ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState245
          | QUOTEDSYMBOL _v_1 ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState245
          | LPAREN ->
              _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState245
          | RPAREN ->
              let _v_2 = _menhir_action_050 () in
              _menhir_run_248 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState245
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_248 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_DECLAREFUN, ttv_result) _menhir_cell1_symbol, ttv_result) _menhir_cell1_option_poly_parameters_ _menhir_cell0_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_list_sort_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState249 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | QUOTEDSYMBOL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAREN ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_238 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_DECLARESORT as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_symbol (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | NUMERAL _v_0 ->
          let _startpos_1 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos_2 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_NUMERAL (_menhir_stack, _v_0, _startpos_1, _endpos_2) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RPAREN ->
              let _endpos_3 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_3) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LPAREN ->
                  _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState240
              | EOF | RPAREN ->
                  let _v_4 = _menhir_action_020 () in
                  _menhir_run_241 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_124 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SETOPTION ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_SETOPTION (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState125 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | KEYWORD _v ->
              _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | SETLOGIC ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_SETLOGIC (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState130 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SYMBOL _v ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | QUOTEDSYMBOL _v ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | SETINFO ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_SETINFO (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState134 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | KEYWORD _v ->
              _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | RESETASSERTIONS ->
          let _startpos_3 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RESETASSERTIONS (_menhir_stack, _startpos_3, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RPAREN ->
              let _endpos_4 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_4) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LPAREN ->
                  _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
              | EOF | RPAREN ->
                  let _v = _menhir_action_020 () in
                  _menhir_run_140 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | RESET ->
          let _startpos_5 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RESET (_menhir_stack, _startpos_5, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RPAREN ->
              let _endpos_6 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_6) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LPAREN ->
                  _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState142
              | EOF | RPAREN ->
                  let _v = _menhir_action_020 () in
                  _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | PUSH ->
          let _startpos_7 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_PUSH (_menhir_stack, _startpos_7) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | NUMERAL _v ->
              _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState144
          | RPAREN ->
              let _v = _menhir_action_075 () in
              _menhir_run_146 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v MenhirState144 _tok
          | _ ->
              _eRR ())
      | POP ->
          let _startpos_8 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_POP (_menhir_stack, _startpos_8) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | NUMERAL _v ->
              _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState149
          | RPAREN ->
              let _v = _menhir_action_075 () in
              _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v MenhirState149 _tok
          | _ ->
              _eRR ())
      | METAINFO ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_METAINFO (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState153 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | KEYWORD _v ->
              _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | GETVALUE ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_GETVALUE (_menhir_stack, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos) in
              let _menhir_s = MenhirState158 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | SYMBOL _v ->
                  _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | STRING _v ->
                  _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | QUOTEDSYMBOL _v ->
                  _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | NUMERAL _v ->
                  _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | LPAREN ->
                  _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | HEXADECIMAL _v ->
                  _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | DECIMAL _v ->
                  _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | BOOL _v ->
                  _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | BINARY _v ->
                  _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | GETUNSATCORE ->
          let _startpos_12 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_GETUNSATCORE (_menhir_stack, _startpos_12, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RPAREN ->
              let _endpos_13 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_13) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LPAREN ->
                  _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState164
              | EOF | RPAREN ->
                  let _v = _menhir_action_020 () in
                  _menhir_run_165 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | GETUNSATASSUMPTIONS ->
          let _startpos_14 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_GETUNSATASSUMPTIONS (_menhir_stack, _startpos_14, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RPAREN ->
              let _endpos_15 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_15) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LPAREN ->
                  _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState167
              | EOF | RPAREN ->
                  let _v = _menhir_action_020 () in
                  _menhir_run_168 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | GETPROOF ->
          let _startpos_16 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_GETPROOF (_menhir_stack, _startpos_16, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RPAREN ->
              let _endpos_17 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_17) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LPAREN ->
                  _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState170
              | EOF | RPAREN ->
                  let _v = _menhir_action_020 () in
                  _menhir_run_171 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | GETOPTION ->
          let _startpos_18 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_GETOPTION (_menhir_stack, _startpos_18) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | KEYWORD _v ->
              let _startpos_19 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _menhir_stack = MenhirCell0_KEYWORD (_menhir_stack, _v, _startpos_19, _endpos) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | RPAREN ->
                  let _endpos_20 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_20) in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | LPAREN ->
                      _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState174
                  | EOF | RPAREN ->
                      let _v_21 = _menhir_action_020 () in
                      _menhir_run_175 _menhir_stack _menhir_lexbuf _menhir_lexer _v_21 _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | GETMODEL ->
          let _startpos_22 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_GETMODEL (_menhir_stack, _startpos_22, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RPAREN ->
              let _endpos_23 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_23) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LPAREN ->
                  _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState177
              | EOF | RPAREN ->
                  let _v = _menhir_action_020 () in
                  _menhir_run_178 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | GETINFO ->
          let _startpos_24 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_GETINFO (_menhir_stack, _startpos_24) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | KEYWORD _v ->
              let _startpos_25 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let (_endpos_kwd_, _startpos_kwd_, kwd) = (_endpos, _startpos_25, _v) in
              let _v = _menhir_action_016 _endpos_kwd_ _startpos_kwd_ kwd in
              let _endpos = _endpos_kwd_ in
              let _menhir_stack = MenhirCell0_info_flag (_menhir_stack, _v, _endpos) in
              (match (_tok : MenhirBasics.token) with
              | RPAREN ->
                  let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_0) in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | LPAREN ->
                      _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState182
                  | EOF | RPAREN ->
                      let _v_1 = _menhir_action_020 () in
                      _menhir_run_183 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | GETASSIGNMENT ->
          let _startpos_26 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_GETASSIGNMENT (_menhir_stack, _startpos_26, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RPAREN ->
              let _endpos_27 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_27) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LPAREN ->
                  _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState185
              | EOF | RPAREN ->
                  let _v = _menhir_action_020 () in
                  _menhir_run_186 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | GETASSERTIONS ->
          let _startpos_28 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_GETASSERTIONS (_menhir_stack, _startpos_28, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RPAREN ->
              let _endpos_29 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_29) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LPAREN ->
                  _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState188
              | EOF | RPAREN ->
                  let _v = _menhir_action_020 () in
                  _menhir_run_189 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | EXIT ->
          let _startpos_30 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_EXIT (_menhir_stack, _startpos_30, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RPAREN ->
              let _endpos_31 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_31) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LPAREN ->
                  _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState191
              | EOF | RPAREN ->
                  let _v = _menhir_action_020 () in
                  _menhir_run_192 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | ECHO ->
          let _startpos_32 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_ECHO (_menhir_stack, _startpos_32) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | STRING _v ->
              let _startpos_33 = _menhir_lexbuf.Lexing.lex_start_p in
              let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
              let _menhir_stack = MenhirCell0_STRING (_menhir_stack, _v, _startpos_33, _endpos) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | RPAREN ->
                  let _endpos_34 = _menhir_lexbuf.Lexing.lex_curr_p in
                  let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_34) in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | LPAREN ->
                      _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState195
                  | EOF | RPAREN ->
                      let _v_35 = _menhir_action_020 () in
                      _menhir_run_196 _menhir_stack _menhir_lexbuf _menhir_lexer _v_35 _tok
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | DEFINESORT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_DEFINESORT (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState197 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SYMBOL _v ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | QUOTEDSYMBOL _v ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | DEFINEFUNREC ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_DEFINEFUNREC (_menhir_stack, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos) in
              let _menhir_s = MenhirState208 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LPAREN ->
                  _menhir_run_209 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | DEFINEFUN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_DEFINEFUN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState232 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SYMBOL _v ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | QUOTEDSYMBOL _v ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | DECLARESORT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_DECLARESORT (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState237 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SYMBOL _v ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | QUOTEDSYMBOL _v ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | DECLAREFUN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_DECLAREFUN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState242 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SYMBOL _v ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | QUOTEDSYMBOL _v ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | DECLARECONST ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_DECLARECONST (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState253 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SYMBOL _v ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | QUOTEDSYMBOL _v ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | CHECKSAT ->
          let _startpos_43 = _menhir_lexbuf.Lexing.lex_start_p in
          let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_CHECKSAT (_menhir_stack, _startpos_43, _endpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RPAREN ->
              let _endpos_44 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_44) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LPAREN ->
                  _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState259
              | EOF | RPAREN ->
                  let _v = _menhir_action_020 () in
                  _menhir_run_260 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | ASSERT ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_ASSERT (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState261 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SYMBOL _v ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | STRING _v ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | QUOTEDSYMBOL _v ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | NUMERAL _v ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | LPAREN ->
              _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | HEXADECIMAL _v ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | DECIMAL _v ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | BOOL _v ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | BINARY _v ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_081 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v_0 ->
          let _menhir_stack = MenhirCell1_KEYWORD (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState081
      | STRING _v_1 ->
          let _menhir_stack = MenhirCell1_KEYWORD (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState081
      | QUOTEDSYMBOL _v_2 ->
          let _menhir_stack = MenhirCell1_KEYWORD (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState081
      | NUMERAL _v_3 ->
          let _menhir_stack = MenhirCell1_KEYWORD (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState081
      | LPAREN ->
          let _menhir_stack = MenhirCell1_KEYWORD (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          let _startpos_4 = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, MenhirState081, _startpos_4) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | UNDERSCORE ->
              _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
          | SYMBOL _v_5 ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState082
          | STRING _v_6 ->
              _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_6 MenhirState082
          | QUOTEDSYMBOL _v_7 ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v_7 MenhirState082
          | NUMERAL _v_8 ->
              _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v_8 MenhirState082
          | LPAREN ->
              _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState082
          | KEYWORD _v_9 ->
              _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v_9 MenhirState082
          | HEXADECIMAL _v_10 ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v_10 MenhirState082
          | DECIMAL _v_11 ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v_11 MenhirState082
          | BOOL _v_12 ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v_12 MenhirState082
          | BINARY _v_13 ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v_13 MenhirState082
          | RPAREN ->
              let _v_14 = _menhir_action_048 () in
              _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v_14
          | _ ->
              _eRR ())
      | HEXADECIMAL _v_15 ->
          let _menhir_stack = MenhirCell1_KEYWORD (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v_15 MenhirState081
      | DECIMAL _v_16 ->
          let _menhir_stack = MenhirCell1_KEYWORD (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v_16 MenhirState081
      | BOOL _v_17 ->
          let _menhir_stack = MenhirCell1_KEYWORD (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v_17 MenhirState081
      | BINARY _v_18 ->
          let _menhir_stack = MenhirCell1_KEYWORD (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v_18 MenhirState081
      | KEYWORD _ | RPAREN ->
          let (_endpos_kwd_, _startpos_kwd_, kwd) = (_endpos, _startpos, _v) in
          let _v = _menhir_action_004 _endpos_kwd_ _startpos_kwd_ kwd in
          _menhir_goto_attribute _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_kwd_ _startpos_kwd_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_005 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let (_endpos__1_, _startpos__1_, _1) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_094 _1 in
      _menhir_goto_spec_constant _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _menhir_s _tok
  
  and _menhir_goto_spec_constant : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState081 ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok
      | MenhirState082 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState088 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState084 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState276 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState277 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState261 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState222 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState158 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState003 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState112 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState111 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState008 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState109 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState101 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState102 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState079 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState076 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState070 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState064 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState052 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState039 ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_095 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_KEYWORD -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_sc_, _startpos_sc_, sc) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_006 _endpos_sc_ _startpos_sc_ sc in
      _menhir_goto_attribute_value _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_sc_ _v _tok
  
  and _menhir_goto_attribute_value : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_KEYWORD -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell1_KEYWORD (_menhir_stack, _menhir_s, kwd, _startpos_kwd_, _) = _menhir_stack in
      let (_endpos_attrval_, attrval) = (_endpos, _v) in
      let _v = _menhir_action_005 _endpos_attrval_ _startpos_kwd_ attrval kwd in
      _menhir_goto_attribute _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_attrval_ _startpos_kwd_ _v _menhir_s _tok
  
  and _menhir_goto_attribute : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState153 ->
          _menhir_run_154 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState134 ->
          _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState125 ->
          _menhir_run_129 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState099 ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState080 ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_154 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_METAINFO as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_attribute (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState155
          | EOF | RPAREN ->
              let _v_1 = _menhir_action_020 () in
              _menhir_run_156 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_135 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_SETINFO as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_attribute (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState136
          | EOF | RPAREN ->
              let _v_1 = _menhir_action_020 () in
              _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_129 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_SETOPTION as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let (_endpos_attr_, _startpos_attr_, attr) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_087 _endpos_attr_ _startpos_attr_ attr in
      let _endpos = _endpos_attr_ in
      let _menhir_stack = MenhirCell1_smt_option (_menhir_stack, _menhir_s, _v, _endpos) in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
          | EOF | RPAREN ->
              let _v_1 = _menhir_action_020 () in
              _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_099 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | KEYWORD _v_0 ->
          let _menhir_stack = MenhirCell1_attribute (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState099
      | RPAREN ->
          let x = _v in
          let _v = _menhir_action_055 x in
          _menhir_goto_nonempty_list_attribute_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_attribute_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState099 ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState080 ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_100 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_attribute -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_attribute (_menhir_stack, _menhir_s, x, _, _) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_056 x xs in
      _menhir_goto_nonempty_list_attribute_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_097 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LPAREN, ttv_result) _menhir_cell1_BANG, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_term (_menhir_stack, _, t, _) = _menhir_stack in
      let MenhirCell1_BANG (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos__5_, attrs) = (_endpos, _v) in
      let _v = _menhir_action_106 _endpos__5_ _startpos__1_ attrs t in
      _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__5_ _v _menhir_s _tok
  
  and _menhir_goto_term : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState277 ->
          _menhir_run_278 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState276 ->
          _menhir_run_277 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState261 ->
          _menhir_run_262 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState222 ->
          _menhir_run_223 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok
      | MenhirState112 ->
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState003 ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState109 ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState008 ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState158 ->
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState111 ->
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState102 ->
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState101 ->
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState079 ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState076 ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState070 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState064 ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState052 ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState039 ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_277 : type  ttv_stack. ((ttv_stack, _menhir_box_value) _menhir_cell1_LPAREN _menhir_cell0_LPAREN as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_value) _menhir_state -> _ -> _menhir_box_value =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v, _endpos) in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v_0 ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState277
      | STRING _v_1 ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState277
      | QUOTEDSYMBOL _v_2 ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState277
      | NUMERAL _v_3 ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState277
      | LPAREN ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState277
      | HEXADECIMAL _v_4 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState277
      | DECIMAL _v_5 ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState277
      | BOOL _v_6 ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v_6 MenhirState277
      | BINARY _v_7 ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v_7 MenhirState277
      | _ ->
          _eRR ()
  
  and _menhir_run_007 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let (_endpos__1_, _startpos__1_, _1) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_093 _1 in
      _menhir_goto_spec_constant _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_020 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos) in
      let _menhir_s = MenhirState020 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | UNDERSCORE ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | SYMBOL _v ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | QUOTEDSYMBOL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos) in
          let _menhir_s = MenhirState021 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | UNDERSCORE ->
              _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | AS ->
              _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LAMBDA ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | FORALL ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXISTS ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | BANG ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | AS ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_009 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_UNDERSCORE (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState009 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | QUOTEDSYMBOL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BV_NUMERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_010 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN, ttv_result) _menhir_cell1_UNDERSCORE -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | NUMERAL _v_0 ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RPAREN ->
              let _endpos_1 = _menhir_lexbuf.Lexing.lex_curr_p in
              let _tok = _menhir_lexer _menhir_lexbuf in
              let MenhirCell1_UNDERSCORE (_menhir_stack, _) = _menhir_stack in
              let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
              let (_endpos__5_, size, value) = (_endpos_1, _v_0, _v) in
              let _v = _menhir_action_097 size value in
              _menhir_goto_spec_constant _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__5_ _startpos__1_ _v _menhir_s _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_023 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_AS (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState023 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | QUOTEDSYMBOL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAREN ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_036 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LET (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState037 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_038 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos) in
      let _menhir_s = MenhirState038 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | QUOTEDSYMBOL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_055 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LAMBDA (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState056 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_057 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos) in
      let _menhir_s = MenhirState057 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | QUOTEDSYMBOL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_067 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_FORALL (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState068 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_073 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_EXISTS (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState074 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_079 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_BANG (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState079 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | STRING _v ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | QUOTEDSYMBOL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NUMERAL _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAREN ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | HEXADECIMAL _v ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | DECIMAL _v ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BOOL _v ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINARY _v ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_040 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let (_endpos__1_, _startpos__1_, _1) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_096 _1 in
      _menhir_goto_spec_constant _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_041 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let (_endpos__1_, _startpos__1_, _1) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_092 _1 in
      _menhir_goto_spec_constant _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_042 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let (_endpos__1_, _startpos__1_, _1) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_095 _1 in
      _menhir_goto_spec_constant _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_043 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let (_endpos__1_, _startpos__1_, _1) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_091 _1 in
      _menhir_goto_spec_constant _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _startpos__1_ _v _menhir_s _tok
  
  and _menhir_run_262 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_ASSERT as 'stack) -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v, _endpos) in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState263
          | EOF | RPAREN ->
              let _v_1 = _menhir_action_020 () in
              _menhir_run_264 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_223 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_symbol, ttv_result) _menhir_cell1_option_poly_parameters_ _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_list_sorted_var_ _menhir_cell0_RPAREN, ttv_result) _menhir_cell1_sort -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _tok ->
      let MenhirCell1_sort (_menhir_stack, _, so, _) = _menhir_stack in
      let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_list_sorted_var_ (_menhir_stack, _, svars) = _menhir_stack in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_option_poly_parameters_ (_menhir_stack, _, polys) = _menhir_stack in
      let MenhirCell1_symbol (_menhir_stack, _menhir_s, symb, _startpos_symb_, _) = _menhir_stack in
      let (_endpos_t_, t) = (_endpos, _v) in
      let _v = _menhir_action_009 polys so svars symb t in
      _menhir_goto_fun_def _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_t_ _startpos_symb_ _v _menhir_s _tok
  
  and _menhir_goto_fun_def : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState232 ->
          _menhir_run_236 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState209 ->
          _menhir_run_224 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_236 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_DEFINEFUN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let (_endpos_fd_, _startpos_fd_, fd) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_010 _endpos_fd_ _startpos_fd_ fd in
      let _endpos = _endpos_fd_ in
      let _menhir_stack = MenhirCell1_fun_nonrec_def (_menhir_stack, _menhir_s, _v, _endpos) in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState234
          | EOF | RPAREN ->
              let _v_1 = _menhir_action_020 () in
              _menhir_run_235 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_224 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (_endpos__3_, fd) = (_endpos_0, _v) in
          let _v = _menhir_action_011 _endpos__3_ _startpos__1_ fd in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              let _menhir_stack = MenhirCell1_fun_rec_def (_menhir_stack, _menhir_s, _v) in
              _menhir_run_209 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState230
          | RPAREN ->
              let x = _v in
              let _v = _menhir_action_059 x in
              _menhir_goto_nonempty_list_fun_rec_def_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_209 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos) in
      let _menhir_s = MenhirState209 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | QUOTEDSYMBOL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_fun_rec_def_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState230 ->
          _menhir_run_231 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState208 ->
          _menhir_run_226 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_231 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_fun_rec_def -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_fun_rec_def (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_060 x xs in
      _menhir_goto_nonempty_list_fun_rec_def_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_226 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_DEFINEFUNREC _menhir_cell0_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_fun_rec_def_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState228
          | EOF | RPAREN ->
              let _v_1 = _menhir_action_020 () in
              _menhir_run_229 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_112 : type  ttv_stack. ((ttv_stack, _menhir_box_ivalue) _menhir_cell1_LPAREN _menhir_cell0_LPAREN as 'stack) -> _ -> _ -> _ -> _ -> ('stack, _menhir_box_ivalue) _menhir_state -> _ -> _menhir_box_ivalue =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v, _endpos) in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v_0 ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState112
      | STRING _v_1 ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState112
      | QUOTEDSYMBOL _v_2 ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState112
      | NUMERAL _v_3 ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState112
      | LPAREN ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | HEXADECIMAL _v_4 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState112
      | DECIMAL _v_5 ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState112
      | BOOL _v_6 ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v_6 MenhirState112
      | BINARY _v_7 ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v_7 MenhirState112
      | _ ->
          _eRR ()
  
  and _menhir_run_107 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LPAREN, ttv_result) _menhir_cell1_term as 'stack) -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v, _endpos) in
              let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_0) in
              let _menhir_s = MenhirState108 in
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos) in
              let _menhir_s = MenhirState109 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | SYMBOL _v ->
                  _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | STRING _v ->
                  _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | QUOTEDSYMBOL _v ->
                  _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | NUMERAL _v ->
                  _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | LPAREN ->
                  _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | HEXADECIMAL _v ->
                  _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | DECIMAL _v ->
                  _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | BOOL _v ->
                  _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | BINARY _v ->
                  _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | RPAREN ->
              let MenhirCell1_term (_menhir_stack, _, x, _) = _menhir_stack in
              let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _) = _menhir_stack in
              let y = _v in
              let _v = _menhir_action_057 x y in
              _menhir_goto_nonempty_list_delimited_LPAREN_pair_term_term__RPAREN__ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_106 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v, _endpos) in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v_0 ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState106
      | STRING _v_1 ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState106
      | QUOTEDSYMBOL _v_2 ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState106
      | NUMERAL _v_3 ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState106
      | LPAREN ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | HEXADECIMAL _v_4 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState106
      | DECIMAL _v_5 ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState106
      | BOOL _v_6 ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v_6 MenhirState106
      | BINARY _v_7 ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v_7 MenhirState106
      | _ ->
          _eRR ()
  
  and _menhir_run_102 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v_0 ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v, _endpos) in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState102
      | STRING _v_1 ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v, _endpos) in
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState102
      | QUOTEDSYMBOL _v_2 ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v, _endpos) in
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState102
      | NUMERAL _v_3 ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v, _endpos) in
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState102
      | LPAREN ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v, _endpos) in
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | HEXADECIMAL _v_4 ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v, _endpos) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState102
      | DECIMAL _v_5 ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v, _endpos) in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState102
      | BOOL _v_6 ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v, _endpos) in
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v_6 MenhirState102
      | BINARY _v_7 ->
          let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v, _endpos) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v_7 MenhirState102
      | RPAREN ->
          let x = _v in
          let _v = _menhir_action_069 x in
          _menhir_goto_nonempty_list_term_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_term_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState158 ->
          _menhir_run_159 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState111 ->
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState101 ->
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState102 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_159 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_GETVALUE _menhir_cell0_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_term_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState161
          | EOF | RPAREN ->
              let _v_1 = _menhir_action_020 () in
              _menhir_run_162 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_104 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN, ttv_result) _menhir_cell1_qual_identifier -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_qual_identifier (_menhir_stack, _, qualid, _, _) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos__4_, ts) = (_endpos, _v) in
      let _v = _menhir_action_102 _endpos__4_ _startpos__1_ qualid ts in
      _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__4_ _v _menhir_s _tok
  
  and _menhir_run_103 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_term -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_term (_menhir_stack, _menhir_s, x, _) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_070 x xs in
      _menhir_goto_nonempty_list_term_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_080 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LPAREN, ttv_result) _menhir_cell1_BANG as 'stack) -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_term (_menhir_stack, _menhir_s, _v, _endpos) in
      match (_tok : MenhirBasics.token) with
      | KEYWORD _v_0 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState080
      | _ ->
          _eRR ()
  
  and _menhir_run_077 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LPAREN, ttv_result) _menhir_cell1_EXISTS _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_nonempty_list_sorted_var_ _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_nonempty_list_sorted_var_ (_menhir_stack, _, svars) = _menhir_stack in
          let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_EXISTS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (t, _endpos__7_) = (_v, _endpos_0) in
          let _v = _menhir_action_105 _endpos__7_ _startpos__1_ svars t in
          _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__7_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_071 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LPAREN, ttv_result) _menhir_cell1_FORALL _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_nonempty_list_sorted_var_ _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_nonempty_list_sorted_var_ (_menhir_stack, _, svars) = _menhir_stack in
          let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_FORALL (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (t, _endpos__7_) = (_v, _endpos_0) in
          let _v = _menhir_action_104 _endpos__7_ _startpos__1_ svars t in
          _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__7_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_065 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LPAREN, ttv_result) _menhir_cell1_LAMBDA _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_nonempty_list_sorted_var_ _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_nonempty_list_sorted_var_ (_menhir_stack, _, svars) = _menhir_stack in
          let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LAMBDA (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (t, _endpos__7_) = (_v, _endpos_0) in
          let _v = _menhir_action_107 _endpos__7_ _startpos__1_ svars t in
          _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__7_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_053 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LPAREN, ttv_result) _menhir_cell1_LET _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_nonempty_list_var_binding_ _menhir_cell0_RPAREN -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_RPAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_nonempty_list_var_binding_ (_menhir_stack, _, vbindings) = _menhir_stack in
          let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LET (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (t, _endpos__7_) = (_v, _endpos_0) in
          let _v = _menhir_action_103 _endpos__7_ _startpos__1_ t vbindings in
          _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__7_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_044 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN, ttv_result) _menhir_cell1_symbol -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_symbol (_menhir_stack, _, symb, _, _) = _menhir_stack in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (t, _endpos__4_) = (_v, _endpos_0) in
          let _v = _menhir_action_109 _endpos__4_ _startpos__1_ symb t in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              let _menhir_stack = MenhirCell1_var_binding (_menhir_stack, _menhir_s, _v) in
              _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState049
          | RPAREN ->
              let x = _v in
              let _v = _menhir_action_071 x in
              _menhir_goto_nonempty_list_var_binding_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_var_binding_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState037 ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState049 ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_051 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LPAREN, ttv_result) _menhir_cell1_LET _menhir_cell0_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_var_binding_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState052 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | STRING _v ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | QUOTEDSYMBOL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NUMERAL _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAREN ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | HEXADECIMAL _v ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | DECIMAL _v ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BOOL _v ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINARY _v ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_050 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_var_binding -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_var_binding (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_072 x xs in
      _menhir_goto_nonempty_list_var_binding_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_087 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let (_endpos_sc_, _startpos_sc_, sc) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_083 _endpos_sc_ _startpos_sc_ sc in
      _menhir_goto_sexpr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_sexpr : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sexpr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v_0 ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState088
      | STRING _v_1 ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState088
      | QUOTEDSYMBOL _v_2 ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState088
      | NUMERAL _v_3 ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState088
      | LPAREN ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | KEYWORD _v_4 ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState088
      | HEXADECIMAL _v_5 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState088
      | DECIMAL _v_6 ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v_6 MenhirState088
      | BOOL _v_7 ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v_7 MenhirState088
      | BINARY _v_8 ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v_8 MenhirState088
      | RPAREN ->
          let _v_9 = _menhir_action_048 () in
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v_9
      | _ ->
          _eRR ()
  
  and _menhir_run_084 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | UNDERSCORE ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | SYMBOL _v ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState084
      | STRING _v ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState084
      | QUOTEDSYMBOL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState084
      | NUMERAL _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState084
      | LPAREN ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState084
      | KEYWORD _v ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState084
      | HEXADECIMAL _v ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState084
      | DECIMAL _v ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState084
      | BOOL _v ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState084
      | BINARY _v ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState084
      | RPAREN ->
          let _v = _menhir_action_048 () in
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_083 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_UNDERSCORE (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | BV_NUMERAL _v ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _eRR ()
  
  and _menhir_run_085 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let (_endpos_kwd_, _startpos_kwd_, kwd) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_085 _endpos_kwd_ _startpos_kwd_ kwd in
      _menhir_goto_sexpr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_090 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_LPAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos__3_, sexprs) = (_endpos, _v) in
      let _v = _menhir_action_086 _endpos__3_ _startpos__1_ sexprs in
      _menhir_goto_sexpr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_089 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_sexpr -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_sexpr (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_049 x xs in
      _menhir_goto_list_sexpr_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_sexpr_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState082 ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState084 ->
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState088 ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_092 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_KEYWORD, ttv_result) _menhir_cell1_LPAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LPAREN (_menhir_stack, _, _startpos__1_) = _menhir_stack in
      let (_endpos__3_, sexprs) = (_endpos, _v) in
      let _v = _menhir_action_008 _endpos__3_ _startpos__1_ sexprs in
      _menhir_goto_attribute_value _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__3_ _v _tok
  
  and _menhir_run_046 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let (_endpos__1_, _startpos__1_, _1) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_100 _1 _endpos__1_ _startpos__1_ in
      _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _v _menhir_s _tok
  
  and _menhir_run_145 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let (x, _endpos_x_) = (_v, _endpos) in
      let _v = _menhir_action_076 x in
      _menhir_goto_option_NUMERAL_ _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_x_ _v _menhir_s _tok
  
  and _menhir_goto_option_NUMERAL_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState149 ->
          _menhir_run_150 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState144 ->
          _menhir_run_146 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_150 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_POP as 'stack) -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_option_NUMERAL_ (_menhir_stack, _menhir_s, _v, _endpos) in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState151
          | EOF | RPAREN ->
              let _v_1 = _menhir_action_020 () in
              _menhir_run_152 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_146 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_PUSH as 'stack) -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_option_NUMERAL_ (_menhir_stack, _menhir_s, _v, _endpos) in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState147
          | EOF | RPAREN ->
              let _v_1 = _menhir_action_020 () in
              _menhir_run_148 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_210 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_symbol (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | PAR ->
          _menhir_run_211 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState210
      | LPAREN ->
          let _v_0 = _menhir_action_077 () in
          _menhir_run_216 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState210 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_216 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_symbol as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_option_poly_parameters_ (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState217
          | RPAREN ->
              let _v_0 = _menhir_action_052 () in
              _menhir_run_220 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState217
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_220 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_symbol, ttv_result) _menhir_cell1_option_poly_parameters_ _menhir_cell0_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_list_sorted_var_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState221 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | QUOTEDSYMBOL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAREN ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_200 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v_0 ->
          let _menhir_stack = MenhirCell1_symbol (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState200
      | QUOTEDSYMBOL _v_1 ->
          let _menhir_stack = MenhirCell1_symbol (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState200
      | RPAREN ->
          let x = _v in
          let _v = _menhir_action_067 x in
          _menhir_goto_nonempty_list_symbol_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_symbol_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState199 ->
          _menhir_run_202 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState200 ->
          _menhir_run_201 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_202 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_DEFINESORT, ttv_result) _menhir_cell1_symbol _menhir_cell0_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_symbol_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState203 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | QUOTEDSYMBOL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAREN ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_201 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_symbol -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_symbol (_menhir_stack, _menhir_s, x, _, _) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_068 x xs in
      _menhir_goto_nonempty_list_symbol_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_198 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_DEFINESORT as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_symbol (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos) in
          let _menhir_s = MenhirState199 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | SYMBOL _v ->
              _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | QUOTEDSYMBOL _v ->
              _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_131 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_SETLOGIC as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_symbol (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState132
          | EOF | RPAREN ->
              let _v_1 = _menhir_action_020 () in
              _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_094 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_KEYWORD -> _ -> _ -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _tok ->
      let (_endpos_symb_, _startpos_symb_, symb) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_007 _endpos_symb_ _startpos_symb_ symb in
      _menhir_goto_attribute_value _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_symb_ _v _tok
  
  and _menhir_run_086 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let (_endpos_symb_, _startpos_symb_, symb) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_084 _endpos_symb_ _startpos_symb_ symb in
      _menhir_goto_sexpr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_058 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_symbol (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v_0 ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState058
      | QUOTEDSYMBOL _v_1 ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState058
      | LPAREN ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState058
      | _ ->
          _eRR ()
  
  and _menhir_run_039 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_symbol (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v_0 ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState039
      | STRING _v_1 ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState039
      | QUOTEDSYMBOL _v_2 ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState039
      | NUMERAL _v_3 ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState039
      | LPAREN ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState039
      | HEXADECIMAL _v_4 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState039
      | DECIMAL _v_5 ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState039
      | BOOL _v_6 ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v_6 MenhirState039
      | BINARY _v_7 ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v_7 MenhirState039
      | _ ->
          _eRR ()
  
  and _menhir_run_025 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let (_endpos_symb_, _startpos_symb_, symb) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_012 _endpos_symb_ _startpos_symb_ symb in
      _menhir_goto_identifier _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_symb_ _startpos_symb_ _v _menhir_s _tok
  
  and _menhir_goto_identifier : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState276 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState277 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState261 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState222 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState158 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState003 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState112 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState008 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState111 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState109 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState020 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState101 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState102 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState079 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState076 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState070 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState064 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState052 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState039 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState254 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState245 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState249 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState246 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState221 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState212 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState203 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState058 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState026 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState028 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState029 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState027 ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState023 ->
          _menhir_run_026 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_048 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_080 _endpos_id_ _startpos_id_ id in
      _menhir_goto_qual_identifier _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _startpos_id_ _v _menhir_s _tok
  
  and _menhir_goto_qual_identifier : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState008 ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState020 ->
          _menhir_run_101 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState276 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState277 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState261 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState222 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState158 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState003 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState112 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState111 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState109 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState101 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState102 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState079 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState076 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState070 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState064 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState052 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | MenhirState039 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_111 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_qual_identifier (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v_0 ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState111
      | STRING _v_1 ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState111
      | QUOTEDSYMBOL _v_2 ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState111
      | NUMERAL _v_3 ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState111
      | LPAREN ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | HEXADECIMAL _v_4 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState111
      | DECIMAL _v_5 ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState111
      | BOOL _v_6 ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v_6 MenhirState111
      | BINARY _v_7 ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v_7 MenhirState111
      | _ ->
          _eRR ()
  
  and _menhir_run_101 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_qual_identifier (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v_0 ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState101
      | STRING _v_1 ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState101
      | QUOTEDSYMBOL _v_2 ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState101
      | NUMERAL _v_3 ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState101
      | LPAREN ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState101
      | HEXADECIMAL _v_4 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState101
      | DECIMAL _v_5 ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState101
      | BOOL _v_6 ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v_6 MenhirState101
      | BINARY _v_7 ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v_7 MenhirState101
      | _ ->
          _eRR ()
  
  and _menhir_run_047 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let (_endpos__1_, _startpos__1_, _1) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_101 _1 _endpos__1_ _startpos__1_ in
      _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__1_ _v _menhir_s _tok
  
  and _menhir_run_031 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let (_endpos_id_, _startpos_id_, id) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_088 _endpos_id_ _startpos_id_ id in
      _menhir_goto_sort _menhir_stack _menhir_lexbuf _menhir_lexer _endpos_id_ _v _menhir_s _tok
  
  and _menhir_goto_sort : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState254 ->
          _menhir_run_255 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState249 ->
          _menhir_run_250 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState246 ->
          _menhir_run_246 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState245 ->
          _menhir_run_246 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState221 ->
          _menhir_run_222 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState203 ->
          _menhir_run_204 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState058 ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState026 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState212 ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState029 ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | MenhirState028 ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_255 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_DECLARECONST, ttv_result) _menhir_cell1_symbol as 'stack) -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sort (_menhir_stack, _menhir_s, _v, _endpos) in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState256
          | EOF | RPAREN ->
              let _v_1 = _menhir_action_020 () in
              _menhir_run_257 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_250 : type  ttv_stack ttv_result. (((((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_DECLAREFUN, ttv_result) _menhir_cell1_symbol, ttv_result) _menhir_cell1_option_poly_parameters_ _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_list_sort_ _menhir_cell0_RPAREN as 'stack) -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sort (_menhir_stack, _menhir_s, _v, _endpos) in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState251
          | EOF | RPAREN ->
              let _v_1 = _menhir_action_020 () in
              _menhir_run_252 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_246 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sort (_menhir_stack, _menhir_s, _v, _endpos) in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v_0 ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState246
      | QUOTEDSYMBOL _v_1 ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState246
      | LPAREN ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState246
      | RPAREN ->
          let _v_2 = _menhir_action_050 () in
          _menhir_run_247 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2
      | _ ->
          _eRR ()
  
  and _menhir_run_247 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_sort -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_sort (_menhir_stack, _menhir_s, x, _) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_051 x xs in
      _menhir_goto_list_sort_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_sort_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState245 ->
          _menhir_run_248 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState246 ->
          _menhir_run_247 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_222 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_symbol, ttv_result) _menhir_cell1_option_poly_parameters_ _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_list_sorted_var_ _menhir_cell0_RPAREN as 'stack) -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sort (_menhir_stack, _menhir_s, _v, _endpos) in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v_0 ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState222
      | STRING _v_1 ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState222
      | QUOTEDSYMBOL _v_2 ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState222
      | NUMERAL _v_3 ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState222
      | LPAREN ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState222
      | HEXADECIMAL _v_4 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState222
      | DECIMAL _v_5 ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState222
      | BOOL _v_6 ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v_6 MenhirState222
      | BINARY _v_7 ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v_7 MenhirState222
      | _ ->
          _eRR ()
  
  and _menhir_run_204 : type  ttv_stack ttv_result. ((((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_DEFINESORT, ttv_result) _menhir_cell1_symbol _menhir_cell0_LPAREN, ttv_result) _menhir_cell1_nonempty_list_symbol_ _menhir_cell0_RPAREN as 'stack) -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sort (_menhir_stack, _menhir_s, _v, _endpos) in
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos_0) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LPAREN ->
              _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState205
          | EOF | RPAREN ->
              let _v_1 = _menhir_action_020 () in
              _menhir_run_206 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_059 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN, ttv_result) _menhir_cell1_symbol -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_symbol (_menhir_stack, _, symb, _, _) = _menhir_stack in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (so, _endpos__4_) = (_v, _endpos_0) in
          let _v = _menhir_action_090 _endpos__4_ _startpos__1_ so symb in
          _menhir_goto_sorted_var _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_sorted_var : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState218 ->
          _menhir_run_218 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState217 ->
          _menhir_run_218 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState074 ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState068 ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState061 ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState056 ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_218 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_sorted_var (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState218
      | RPAREN ->
          let _v_0 = _menhir_action_052 () in
          _menhir_run_219 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0
      | _ ->
          _eRR ()
  
  and _menhir_run_219 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_sorted_var -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_sorted_var (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_053 x xs in
      _menhir_goto_list_sorted_var_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_list_sorted_var_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState217 ->
          _menhir_run_220 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState218 ->
          _menhir_run_219 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_061 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _menhir_stack = MenhirCell1_sorted_var (_menhir_stack, _menhir_s, _v) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState061
      | RPAREN ->
          let x = _v in
          let _v = _menhir_action_065 x in
          _menhir_goto_nonempty_list_sorted_var_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_sorted_var_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState074 ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState068 ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState056 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState061 ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_075 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LPAREN, ttv_result) _menhir_cell1_EXISTS _menhir_cell0_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_sorted_var_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState076 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | STRING _v ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | QUOTEDSYMBOL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NUMERAL _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAREN ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | HEXADECIMAL _v ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | DECIMAL _v ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BOOL _v ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINARY _v ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_069 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LPAREN, ttv_result) _menhir_cell1_FORALL _menhir_cell0_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_sorted_var_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState070 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | STRING _v ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | QUOTEDSYMBOL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NUMERAL _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAREN ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | HEXADECIMAL _v ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | DECIMAL _v ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BOOL _v ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINARY _v ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_063 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LPAREN, ttv_result) _menhir_cell1_LAMBDA _menhir_cell0_LPAREN as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _menhir_stack = MenhirCell1_nonempty_list_sorted_var_ (_menhir_stack, _menhir_s, _v) in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _menhir_stack = MenhirCell0_RPAREN (_menhir_stack, _endpos) in
      let _menhir_s = MenhirState064 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | STRING _v ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | QUOTEDSYMBOL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NUMERAL _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAREN ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | HEXADECIMAL _v ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | DECIMAL _v ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BOOL _v ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINARY _v ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_062 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_sorted_var -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_sorted_var (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_066 x xs in
      _menhir_goto_nonempty_list_sorted_var_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_034 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LPAREN, ttv_result) _menhir_cell1_AS, ttv_result) _menhir_cell1_identifier -> _ -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RPAREN ->
          let _endpos_0 = _menhir_lexbuf.Lexing.lex_curr_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_identifier (_menhir_stack, _, id, _, _) = _menhir_stack in
          let MenhirCell1_AS (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
          let (so, _endpos__5_) = (_v, _endpos_0) in
          let _v = _menhir_action_081 _endpos__5_ _startpos__1_ id so in
          _menhir_goto_qual_identifier _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__5_ _startpos__1_ _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_029 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v_0 ->
          let _menhir_stack = MenhirCell1_sort (_menhir_stack, _menhir_s, _v, _endpos) in
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState029
      | QUOTEDSYMBOL _v_1 ->
          let _menhir_stack = MenhirCell1_sort (_menhir_stack, _menhir_s, _v, _endpos) in
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState029
      | LPAREN ->
          let _menhir_stack = MenhirCell1_sort (_menhir_stack, _menhir_s, _v, _endpos) in
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState029
      | RPAREN ->
          let x = _v in
          let _v = _menhir_action_063 x in
          _menhir_goto_nonempty_list_sort_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_nonempty_list_sort_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState212 ->
          _menhir_run_213 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState028 ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState029 ->
          _menhir_run_030 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_213 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_symbol, ttv_result) _menhir_cell1_PAR _menhir_cell0_LPAREN -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_LPAREN (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_PAR (_menhir_stack, _menhir_s) = _menhir_stack in
      let sorts = _v in
      let _v = _menhir_action_079 sorts in
      let x = _v in
      let _v = _menhir_action_078 x in
      _menhir_goto_option_poly_parameters_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_option_poly_parameters_ : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_symbol as 'stack) -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState243 ->
          _menhir_run_244 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState210 ->
          _menhir_run_216 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_032 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN, ttv_result) _menhir_cell1_identifier -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_identifier (_menhir_stack, _, id, _, _) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (sorts, _endpos__4_) = (_v, _endpos) in
      let _v = _menhir_action_089 _endpos__4_ _startpos__1_ id sorts in
      _menhir_goto_sort _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__4_ _v _menhir_s _tok
  
  and _menhir_run_030 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_sort -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_sort (_menhir_stack, _menhir_s, x, _) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_064 x xs in
      _menhir_goto_nonempty_list_sort_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_028 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_identifier (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v_0 ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState028
      | QUOTEDSYMBOL _v_1 ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState028
      | LPAREN ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState028
      | _ ->
          _eRR ()
  
  and _menhir_run_026 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LPAREN, ttv_result) _menhir_cell1_AS as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_identifier (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v_0 ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState026
      | QUOTEDSYMBOL _v_1 ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState026
      | LPAREN ->
          _menhir_run_027 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState026
      | _ ->
          _eRR ()
  
  and _menhir_run_013 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LPAREN, ttv_result) _menhir_cell1_UNDERSCORE as 'stack) -> _ -> _ -> _ -> _ -> _ -> ('stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _endpos _startpos _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_symbol (_menhir_stack, _menhir_s, _v, _startpos, _endpos) in
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v_0 ->
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState013
      | NUMERAL _v_1 ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState013
      | _ ->
          _eRR ()
  
  and _menhir_run_014 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let (_endpos__1_, _startpos__1_, _1) = (_endpos, _startpos, _v) in
      let _v = _menhir_action_015 _1 _endpos__1_ _startpos__1_ in
      _menhir_goto_index _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_index : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | SYMBOL _v_0 ->
          let _menhir_stack = MenhirCell1_index (_menhir_stack, _menhir_s, _v) in
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState018
      | NUMERAL _v_1 ->
          let _menhir_stack = MenhirCell1_index (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState018
      | RPAREN ->
          let x = _v in
          let _v = _menhir_action_061 x in
          _menhir_goto_nonempty_list_index_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_015 : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _1 = _v in
      let _v = _menhir_action_014 _1 in
      _menhir_goto_index _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_nonempty_list_index_ : type  ttv_stack ttv_result. ttv_stack -> _ -> _ -> _ -> (ttv_stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState018 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState013 ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_019 : type  ttv_stack ttv_result. (ttv_stack, ttv_result) _menhir_cell1_index -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_index (_menhir_stack, _menhir_s, x) = _menhir_stack in
      let xs = _v in
      let _v = _menhir_action_062 x xs in
      _menhir_goto_nonempty_list_index_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_016 : type  ttv_stack ttv_result. (((ttv_stack, ttv_result) _menhir_cell1_LPAREN, ttv_result) _menhir_cell1_UNDERSCORE, ttv_result) _menhir_cell1_symbol -> _ -> _ -> _ -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_symbol (_menhir_stack, _, symb, _, _) = _menhir_stack in
      let MenhirCell1_UNDERSCORE (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos__1_) = _menhir_stack in
      let (_endpos__5_, indexes) = (_endpos, _v) in
      let _v = _menhir_action_013 _endpos__5_ _startpos__1_ indexes symb in
      _menhir_goto_identifier _menhir_stack _menhir_lexbuf _menhir_lexer _endpos__5_ _startpos__1_ _v _menhir_s _tok
  
  let _menhir_run_008 : type  ttv_stack ttv_result. ((ttv_stack, ttv_result) _menhir_cell1_LPAREN _menhir_cell0_LPAREN as 'stack) -> _ -> _ -> ('stack, ttv_result) _menhir_state -> ttv_result =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
      let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, _menhir_s, _startpos) in
      let _menhir_s = MenhirState008 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | UNDERSCORE ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | SYMBOL _v ->
          _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | STRING _v ->
          _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | QUOTEDSYMBOL _v ->
          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | NUMERAL _v ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | LPAREN ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LET ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LAMBDA ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | HEXADECIMAL _v ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | FORALL ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | EXISTS ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | DECIMAL _v ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BOOL _v ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BINARY _v ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | BANG ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | AS ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  let _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_ivalue =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RPAREN ->
              let _v = _menhir_action_019 () in
              _menhir_run_119 _menhir_stack _v
          | LPAREN ->
              let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, MenhirState000, _startpos) in
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos) in
              let _menhir_s = MenhirState003 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | SYMBOL _v ->
                  _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | STRING _v ->
                  _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | QUOTEDSYMBOL _v ->
                  _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | NUMERAL _v ->
                  _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | LPAREN ->
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | HEXADECIMAL _v ->
                  _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | DECIMAL _v ->
                  _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | BOOL _v ->
                  _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | BINARY _v ->
                  _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  let _menhir_goto_option_MODEL_ : type  ttv_stack. ttv_stack _menhir_cell0_LPAREN -> _ -> _ -> _ -> _ -> _menhir_box_model =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _menhir_stack = MenhirCell0_option_MODEL_ (_menhir_stack, _v) in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState123
      | RPAREN ->
          let _v_0 = _menhir_action_020 () in
          _menhir_run_265 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 _tok
      | _ ->
          _eRR ()
  
  let _menhir_run_120 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_model =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | MODEL ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let x = () in
              let _v = _menhir_action_074 x in
              _menhir_goto_option_MODEL_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | LPAREN | RPAREN ->
              let _v = _menhir_action_073 () in
              _menhir_goto_option_MODEL_ _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  let _menhir_run_269 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_script =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _endpos = _menhir_lexbuf.Lexing.lex_curr_p in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          _menhir_run_124 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState269
      | EOF ->
          let _v = _menhir_action_020 () in
          _menhir_run_271 _menhir_stack _menhir_lexbuf _endpos _v _tok
      | _ ->
          _eRR ()
  
  let _menhir_run_273 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_value =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LPAREN ->
          let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | RPAREN ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let _v = _menhir_action_019 () in
              _menhir_run_285 _menhir_stack _v _tok
          | LPAREN ->
              let _menhir_stack = MenhirCell1_LPAREN (_menhir_stack, MenhirState273, _startpos) in
              let _startpos = _menhir_lexbuf.Lexing.lex_start_p in
              let _menhir_stack = MenhirCell0_LPAREN (_menhir_stack, _startpos) in
              let _menhir_s = MenhirState276 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | SYMBOL _v ->
                  _menhir_run_004 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | STRING _v ->
                  _menhir_run_005 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | QUOTEDSYMBOL _v ->
                  _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | NUMERAL _v ->
                  _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | LPAREN ->
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | HEXADECIMAL _v ->
                  _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | DECIMAL _v ->
                  _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | BOOL _v ->
                  _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | BINARY _v ->
                  _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
end

let value =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_value v = _menhir_run_273 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let script =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_script v = _menhir_run_269 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let model =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_model v = _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

let ivalue =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_ivalue v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v
