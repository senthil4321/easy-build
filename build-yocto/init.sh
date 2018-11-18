#!/bin/bash
set -e
echo "Yocto, Entry point script"
source /workdir/poky/oe-init-build-env /workdir/build
bitbake -k core-image-minimal
exec "$@"