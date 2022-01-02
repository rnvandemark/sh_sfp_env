# sh_sfp_env

## Build instructions for our select ROS2 repos

```
sudo apt update && sudo apt install -y \
  ffmpeg

python3 -m pip install -U \
  youtube_dl

mkdir -p /path/to/your_ws/src
cd /path/to/your_ws
rosinstall src /path/to/sh_sfp_env/sh_sfp.rosinstall
```
