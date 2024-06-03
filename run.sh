#!/bin/sh
touch $2/ghidra.log

clear
make

./_build/install/default/bin/binsec -ghidra -ghidra-analyzeHeadless \
~/Tools/ghidra/support/analyzeHeadless -ghidra-cache $2/ghidra.log $2/$3


./_build/install/default/bin/binsec -test -test-vuln_type $1 -ghidra-cache $2/ghidra.log $2/$3


