#!/bin/bash

cd ~/code/github
mkdir -p out/bin
cp libfuse/build/example/fd_bpf.bpf out/bin
cp libfuse/build/example/fuse_daemon out/bin
cp fio/examples/fio-seq-read.fio out/bin
cp fio/fio out/bin
cp ltp/testcases/kernel/fs/fsstress/fsstress out/bin
echo #!/bin/bash > out/bin/fsstress.sh
echo fsstress -s 123 -d . -p 4 -n 100 -l5 > out/bin/fsstress.sh
chmod u+x out/bin/fsstress.sh
