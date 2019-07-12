#!/bin/bash
#
# this file is generated via docker-builder/generate.pl
#
# do not edit it directly
#

if [ $INSTALLDEPS ] && [ -f cpanfile ]; then
  cpanm --installdeps .
fi

exec "$@"
