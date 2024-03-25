cd $(dirname $0)
BASE_DIR=$(pwd)
export PKG_CONFIG_PATH=$BASE_DIR/../dist/lib/pkgconfig
./configure --toolchain=msvc \
  --prefix=$BASE_DIR/../dist \
  --extra-cflags=-I$BASE_DIR/../dist/include \
  --extra-ldflags=-libpath:$BASE_DIR/../dist/lib \
  --arch=amd64 \
  --enable-shared \
  --enable-gpl \
  --enable-version3 \
  --disable-programs \
  --disable-doc \
  --disable-avdevice \
  --disable-encoders \
  --disable-muxers \
  --disable-devices \
  --disable-filters \
  --enable-libx264 \
  --enable-libx265 \
  --enable-d3d11va \
  --enable-pic \
  --enable-muxer=mp4 \
  --enable-muxer=flv \
  --enable-muxer=ipod \
  --enable-muxer=mov \
  --enable-muxer=wav \
  --enable-muxer=mp3 \
  --enable-muxer=opus \
  --enable-muxer=ogg \
  --enable-muxer=flac \
  --enable-muxer=matroska \
  --enable-muxer=matroska_audio \
  --enable-muxer=image2 \
  --enable-encoder=libx264 \
  --enable-encoder=libx265 \
  --enable-encoder=aac \
  --enable-encoder=aac_mf \
  --enable-encoder=mjpeg \
  --enable-encoder=png \
  --enable-encoder=libopus \

 
make -j$(getconf _NPROCESSORS_ONLN)
make install
