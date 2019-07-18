# fuzz-projects

#### libming


#### upx

参数 -l @@ upx.out 在src/MakeFile里修改debug=1,sanitizer=1可以编译为debug模式

#### lava

https://sites.google.com/site/steelix2017/home/lava

种子文件太大放不进来

http://panda.moyix.net/~moyix/lava_corpus.tar.xz

在make的时候 加AFL_USE_ASAN=1 make

在afl-fuzz测的时候，一般会说内存限制的问题，可以加-m none参数
