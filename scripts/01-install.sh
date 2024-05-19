#!/usr/bin/bash
set -e
set -x

sudo apt-get update
sudo apt install -y pipx
pipx install git+https://github.com/open3e/open3e.git

