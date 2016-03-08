# GitLab Runner with VirtualBox

A Docker image of GitLab runner with VirtualBox. It's built on top of the Docker
image `gitlab/gitlab-runner`. It has also Vagrant.

Versions:

* GitLab Runner: latest
* VirtualBox: 5.0
* Vagrant: 1.8.1

## Host Requirement

Your host should have VirtualBox kernel modules installed and loaded. Of course,
it should also support virtualization. The version of the kernel modules should
be the same than the ones installed into the guest.

```
echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" >> /etc/apt/sources.list.d/virtualbox.list
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | apt-key add -
aptitude update; aptitude install virtualbox-5.0
```

## Usage

```bash
$ docker build -t enx/gitlab-runner .
$ docker run --device=/dev/vboxdrv enx/gitlab-runner
```
