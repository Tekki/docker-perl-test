#!/bin/bash

cd $(dirname "${BASH_SOURCE[0]}")

if [[ $(uname -a) =~ Microsoft ]]; then
  export DOCKER_HOST=tcp://localhost:2375
fi

export PERL_VERSION
for PERL_VERSION in 10 16 20 22 24 26 28 30 32; do
  echo ""
  echo "Perl 5.$PERL_VERSION"
  echo "========="
  docker-compose -p docker-perl-test up
done

docker-compose -p docker-perl-test down
