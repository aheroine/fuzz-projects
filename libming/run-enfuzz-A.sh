#! /bin/bash
#export AFL_NO_AFFINITY=1
exe=/root/projects/libming/libming-bin/listswf
in=in
out=out-enfuzz
fuzzdir=~/x-enfuzz/
$fuzzdir/afl-monitor/afl-fuzz -m none -i $in -o $out -S monitor $exe  @@ > /dev/null &
$fuzzdir/afl/afl-fuzz -m none -i $in -o $out -M master $exe  @@ > /dev/null  &
$fuzzdir/afl/afl-fuzz -m none -i $in -o $out -S afl  $exe  @@ > /dev/null  &
$fuzzdir/fairfuzz/afl-fuzz -m none -i $in -o $out -b -S fairifuzz $exe  @@ >/dev/null &
$fuzzdir/aflfast/afl-fuzz -m none -p fast -i $in -o $out -S aflfast $exe  @@ >/dev/null &

