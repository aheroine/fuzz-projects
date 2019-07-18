#! /bin/bash
#export AFL_NO_AFFINITY=1
exe=/root/projects/libming/libming-bin/listswf
in=in
out=out-split/
fuzzdir=~/rowfuzzer/
$fuzzdir/afl/afl-fuzz -m none -i $in -o $out/afl1 $exe  @@ > /dev/null  &
$fuzzdir/afl/afl-fuzz -m none -i $in -o $out/afl2  $exe  @@ > /dev/null  &
$fuzzdir/fairfuzz/afl-fuzz -m none -b -i $in -o $out/fairifuzz $exe  @@ >/dev/null &
$fuzzdir/aflfast/afl-fuzz -m none -p fast -i $in -o $out/aflfast $exe  @@ >/dev/null &

