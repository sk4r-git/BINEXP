include Cli.Make(
struct
  let shortname = "test"
  let name = "test"
end
)

module Vuln_Type = Builder.String_option (struct
  let name = "vuln_type"
  let doc = "Num of a vuln_type; ex \"CWE131\""
end)

