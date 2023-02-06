# Docker Command

---
[***@nabang1010***](https://github.com/nabang1010)


## Install on Ubuntu

### Prerequisites

* Meet the (system requirements)[https://docs.docker.com/desktop/install/linux-install/#system-requirements]
* Have a 64-bit version of either Ubuntu Jammy Jellyfish 22.04 (LTS) or Ubuntu Impish Indri 21.10. Docker Desktop is supported on `x86_64` (or `amd64`) architecture.
* For non-Gnome Desktop environments, `gnome-terminal` must be installed

```bash
sudo apt install gnome-terminal

```
* Uninstall the tech preview or beta version of Docker Desktop for Linux. Run:
```bash
sudo apt remove docker-desktop
```

* For a complete cleanup, remove configuration and data files at `$HOME/.docker/desktop,` the symlink at `/usr/local/bin/com.docker.cli`, and purge the remaining systemd service files.

```bash
rm -r $HOME/.docker/desktop
sudo rm /usr/local/bin/com.docker.cli
sudo apt purge docker-desktop
```
### Install Docker Desktop

* Recommended approach to install Docker Desktop on Ubuntu:

* Set up [Docker’s package repository](https://docs.docker.com/engine/install/ubuntu/#set-up-the-repository).

* Download latest [DEB package](https://desktop.docker.com/linux/main/amd64/docker-desktop-4.16.2-amd64.deb?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-linux-amd64).

* Install the package with apt as follows:
```bash
sudo apt-get update
sudo apt-get install ./docker-desktop-<version>-<arch>.deb
```
> At the end of the installation process, `apt` displays an error due to installing a downloaded package. You can ignore this error message.
> ```bash
> N: Download is performed unsandboxed as root, as file '/home/user/Downloads/docker-desktop.deb' couldn't be accessed by user '_apt'. - pkgAcquire::Run > (13: Permission denied)
> ```

There are a few post-install configuration steps done through the post-install script contained in the deb package.

The post-install script:

* Sets the capability on the Docker Desktop binary to map privileged ports and set resource limits.
* Adds a DNS name for Kubernetes to `/etc/hosts`.
* Creates a link from `/usr/bin/docker` to `/usr/local/bin/com.docker.cli`.




---

# References

* [Install on Ubuntu](https://docs.docker.com/desktop/install/ubuntu/)