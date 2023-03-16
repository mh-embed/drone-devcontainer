# drone-devcontainer

This is the source for the ```ghcr.io/mh-embed/drone-devcontainer``` image, which is used for developing other ```drone-*``` repos.
If you are working on a different ROS project, this container will probably help you out!

## Set Up

If you haven't heard of devcontainers, fret not!
They are very easy to use!
Just install [VS Code](https://code.visualstudio.com/Download), install the [```ms-vscode-remote.remote-containers```](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) extension, and install [Docker Desktop](https://www.docker.com/products/docker-desktop/)

Copy the ```devcontainer/``` folder into your repo as ```.devcontainer.json``` (note the dot), and let VS Code do the rest!

## Building

This repo is set up to automatically build and tag new versions, but if you want to build manually or are doing testing run the following:

```bash
docker build -t drone-devcontainer ./dev
```
