
(* The type of tokens. *)

type token = 
  | SUPER
  | SUCCESSORS
  | STRING of (string)
  | SIZE
  | RPAR
  | OPCODE
  | NUMERIC of (Z.t)
  | MNEMONIC
  | LPAR
  | KIND
  | INFO
  | FILE
  | EOF
  | DOT
  | DATE
  | ADDRESS

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val instructions: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> ((int * int * string * string * int list) list)

val instruction: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (int * int * string * string * int list)
