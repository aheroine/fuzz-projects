#! /bin/bash
#export AFL_NO_AFFINITY=1
AFL=~/rowfuzzer/afl/afl-fuzz
QSYM=/root/x-enfuzz/qsym/bin/run_qsym_afl.py
out=out-cmp-qsym-1 
exe=/root/projects/libming/libming-bin/listswf
#not instrument
exe_orig=/root/projects/libming/libming-bin/listswf-qsym
$AFL -m none -i in -o $out -S afl1 -- $exe   @@  >/dev/null &
$AFL -m none -i in -o $out -M master --  $exe  @@ >/dev/null &
$QSYM -a afl1 -o $out -n qsym -- $exe_orig @@>/dev/bull &
