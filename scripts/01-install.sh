#!/usr/bin/bash
set -e
set -x

sudo apt install pipx
pipx install git+https://github.com/open3e/open3e.git

