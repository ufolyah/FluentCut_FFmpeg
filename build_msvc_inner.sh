cd $(dirname $0)
./configure --toolchain=msvc
make -j$(getconf _NPROCESSORS_ONLN)
