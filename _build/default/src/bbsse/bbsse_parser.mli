
(* The type of tokens. *)

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
  | ADDRESS of (Z.t)

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val directives: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Bbsse_types.Directive.t list)
