#
# this file is generated via docker-builder/generate.pl
#
# do not edit it directly
#
FROM perl:5.10-buster AS base

WORKDIR /usr/src/app

RUN set -ex \
  && cpanm \
    Test::CPAN::Changes \
    Test::Deep \
    Test::Exception \
    Test::Output \
    Test::Pod \
    Test::Pod::Coverage \
    Test::Warn \
  && rm -r /root/.cpanm

ARG NOW=not-set
LABEL org.opencontainers.image.authors="Tekki <tekki@tekki.ch>"
LABEL org.opencontainers.image.created=$NOW
LABEL org.opencontainers.image.description="Perl test images."
LABEL org.opencontainers.image.documentation=https://github.com/Tekki/docker-perl-test/blob/master/README.md
LABEL org.opencontainers.image.licenses=Artistic-2.0
LABEL org.opencontainers.image.source=https://github.com/Tekki/docker-perl-test/blob/master/p10/Dockerfile
LABEL org.opencontainers.image.title=Perl-Test
LABEL org.opencontainers.image.url=https://github.com/Tekki/docker-perl-test
LABEL org.opencontainers.image.version=10-test

ENV DEBIAN_PACKAGES=
ENV INSTALLDEPS=

COPY docker-entrypoint.sh /usr/local/bin
RUN chmod 0755 /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["prove", "-Ilib", "-r"]

FROM base AS db

RUN set -ex \
  && cpanm \
    DBI \
    DBD::mysql \
    DBD::MariaDB \
    DBD::Pg \
    DBD::SQLite \
    SQL::Abstract \
  && rm -r /root/.cpanm

ARG NOW=not-set
LABEL org.opencontainers.image.created=$NOW
LABEL org.opencontainers.image.version=10-dbtest

FROM db AS mojo

RUN set -ex \
  && cpanm \
    Mojolicious@8.43 \
  && rm -r /root/.cpanm

ARG NOW=not-set
LABEL org.opencontainers.image.created=$NOW
LABEL org.opencontainers.image.version=10-mojotest
