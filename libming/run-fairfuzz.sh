#! /bin/bash
#export AFL_NO_AFFINITY=1
AFL=~/rowfuzzer/fairfuzz/afl-fuzz
#./aflfast/afl-fuzz -p fast -i $in -o $out -S aflfast $exe -l @@
out=out-cmp-fairfuzz-1 
exe=/root/projects/libming/libming-bin/listswf
$AFL  -m none -b  -i in -o $out -S afl1 $exe   @@ > /dev/null &
$AFL  -m none -b  -i in -o $out -S afl2 $exe   @@ > /dev/null &
$AFL  -m none -b  -i in -o $out -S afl3 $exe   @@ > /dev/null &
$AFL  -m none -b  -i in -o $out -M master $exe  @@ > /dev/null &
