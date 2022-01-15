# sh_sfp_env

## Build instructions for our select ROS2 repos

```
sudo apt update && sudo apt install -y \
  ffmpeg \
  autoconf \
  autogen \
  automake \
  build-essential \
  libasound2-dev \
  libflac-dev \
  libogg-dev \
  libtool \
  libvorbis-dev \
  libopus-dev \
  libmp3lame-dev \
  libmpg123-dev \
  libsfml-dev \
  pkg-config \
  python-is-python3

python3 -m pip install -U \
  youtube_dl

# Choose any path XXX
cd /path/to/XXX
git clone https://github.com/libsndfile/libsndfile.git
cd libsndfile
./autogen.sh
./configure --enable-werror
make
sudo make install

mkdir -p /path/to/your_ws/src
cd /path/to/your_ws
rosinstall src /path/to/sh_sfp_env/sh_sfp.rosinstall
```
