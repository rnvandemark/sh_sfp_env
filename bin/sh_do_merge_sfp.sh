function sh_do_pre_pkg_install() { :; }

function sh_do_pkg_install() {
    apt update
    apt install -y \
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
        libncurses-dev \
        pkg-config \
        python-is-python3

    python3 -m pip install -U \
        youtube_dl \
        ffmpeg-python \
        essentia
}

function sh_do_post_pkg_install() {
    pushd ~/ >/dev/null
    git clone https://github.com/libsndfile/libsndfile.git
    pushd libsndfile >/dev/null
    ./autogen.sh
    ./configure --enable-werror
    make
    make install
    popd >/dev/null
    rm -rf libsndfile
    popd >/dev/null
}

function sh_do_post_ws_merge() { :; }
