#!/bin/bash
#
# this file is generated via docker-builder/generate.pl
#
# do not edit it directly
#

if [ $DEBIAN_PACKAGES ]; then
  apt-get update
  apt-get install -y $DEBIAN_PACKAGES
fi

if [ $INSTALLDEPS ] && [ -f cpanfile ]; then
  cpanm --installdeps .
fi

exec "$@"
