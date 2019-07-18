# fuzz-projects

#### libming


#### upx

参数 -l @@ upx.out 在src/MakeFile里修改debug=1,sanitizer=1可以编译为debug模式

#### lava
https://sites.google.com/site/steelix2017/

https://sites.google.com/site/steelix2017/home/lava

种子文件太大放不进来

http://panda.moyix.net/~moyix/lava_corpus.tar.xz

base64 : ./afl-fuzz -m 200 -i b/in -o b/out/ ./b/base64_i -d @@

md5sum : ./afl-fuzz -m 200 -i m/in -o m/out/ ./m/md5sum_i -c @@

unique : ./afl-fuzz-orig -m 200 -i u/in -o u/out/ ./u/uniq_i_r @@

who : ./afl-fuzz -m 200 -i w/in -o w/out/ ./w/who_i @@

base64 runs with the "-d" option;  md5sum runs with the "-c" option

在make的时候 加AFL_USE_ASAN=1 make

在afl-fuzz测的时候，一般会说内存限制的问题，可以加-m none参数
