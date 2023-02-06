# Install IBus Bamboo
---
[***@nabang1010***](https://github.com/nabang1010)



## Command install IBus Bamboo

```bash
sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
```

```bash
sudo apt-get update
```

```bash
sudo apt-get install ibus ibus-bamboo --install-recommends
```

```bash
ibus restart
```

```bash
env DCONF_PROFILE=ibus dconf write /desktop/ibus/general/preload-engines "['BambooUs', 'Bamboo']" && gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'Bamboo')]"
```

----
## References

* [BambooEngine/ibus-bamboo](https://github.com/BambooEngine/ibus-bamboo)
