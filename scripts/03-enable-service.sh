#!/usr/bin/bash
set -e
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")"/.. && pwd)"
set -x
echo $BASE_DIR

cp $BASE_DIR/systemd/vitonubes.service /tmp
sed -i "s#\${USER}#${USER}#" /tmp/vitonubes.service
sed -i "s#\${BASE_DIR}#${BASE_DIR}#" /tmp/vitonubes.service
sudo cp /tmp/vitonubes.service /etc/systemd/system/vitonubes.service

cat /etc/systemd/system/vitonubes.service
