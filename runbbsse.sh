#!/bin/sh
# touch $1/ghidra.log

clear
make

# ./_build/install/default/bin/binsec -ghidra -ghidra-analyzeHeadless \
# ~/Tools/ghidra/support/analyzeHeadless -ghidra-cache $1/ghidra.log $1/$2

cd examples/bbsse
../../_build/install/default/bin/binsec -config cli.cfg  
cd ../..