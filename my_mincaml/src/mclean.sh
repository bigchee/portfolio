#!/bin/bash

bdir=$(pwd)
cd $1
# rm *.normalized
# rm *.parsed
# rm *.closure
# rm *.myasm
rm *.before*
rm *.after*
rm *.inrep
rm *.dmp
rm *.cmi
rm *.cmo
rm *.s
rm *.ans 
rm *.res
rm *.cmp
rm *.dot
rm *.png

cd $bdir