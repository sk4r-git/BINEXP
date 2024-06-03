#!/bin/sh
# touch $1/ghidra.log

clear
make

# ./_build/install/default/bin/binsec -ghidra -ghidra-analyzeHeadless \
# ~/Tools/ghidra/support/analyzeHeadless -ghidra-cache $1/ghidra.log $1/$2

./_build/install/default/bin/binsec -sse -sse-script ./examples/sse/fcsc/2022.souk/crackme.ini -sse-depth 100000  -sse-qmerge 100 ./examples/sse/fcsc/2022.souk/core.snapshot