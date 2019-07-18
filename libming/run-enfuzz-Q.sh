#! /bin/bash
#export AFL_NO_AFFINITY=1
exe=/root/projects/libming/libming-bin/listswf
#not instrument
exe_orig=/root/projects/libming/libming-bin/listswf-qsym
in=in
out=out-enfuzz-Q
QSYM=/root/x-enfuzz/qsym/bin/run_qsym_afl.py
fuzzdir=~/x-enfuzz
$fuzzdir/afl-monitor/afl-fuzz -m none -i $in -o $out -S monitor -- $exe  @@ > /dev/null &
$fuzzdir/afl/afl-fuzz -m none -i $in -o $out -S afl --  $exe  @@ > /dev/null  &
$fuzzdir/fairfuzz/afl-fuzz -m none -i $in -o $out -b -S fairifuzz -- $exe  @@ >/dev/null &
$fuzzdir/aflfast/afl-fuzz -m none -p fast -i $in -o $out -S aflfast --  $exe  @@ >/dev/null &
sleep 3
$QSYM -a afl -o $out -n qsym -- $exe_orig @@>/dev/null &

