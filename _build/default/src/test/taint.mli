val back : Target.t -> string -> Target.arg
val find_v : Target.t -> Virtual_address.t -> Target.OrderedDhunk.t
val from_what : Target.t -> int -> Target.OrderedDhunk.t list list * string list * Virtual_address.t list
val invert : 'a list -> 'a list