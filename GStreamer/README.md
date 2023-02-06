# GStreamer Command

---
[***@nabang1010***](https://github.com/nabang1010)


## Install GStreamer Ubuntu
```bash
apt-get install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libgstreamer-plugins-bad1.0-dev gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-doc gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio
```


## GStreamer Inspect

```bash
gst-inspect-1.0 [plugin_name]
```

## GStreamer Clean Cache

```bash
rm ~/.cache/gstreamer-1.0/registry.x86_64.bin
```

## GStreamer Launch

```bash

gst-launch-1.0 [plugin_name] [options]

```