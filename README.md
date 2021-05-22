<!-- this file is generated via docker-builder/generate.pl, do not edit it directly -->

# Perl-Test

Perl test images.

Different Perl versions with
[Test::CPAN::Changes](https://metacpan.org/pod/Test::CPAN::Changes),
[Test::Deep](https://metacpan.org/pod/Test::Deep),
[Test::Exception](https://metacpan.org/pod/Test::Exception),
[Test::Output](https://metacpan.org/pod/Test::Output),
[Test::Pod](https://metacpan.org/pod/Test::Pod),
[Test::Pod::Coverage](https://metacpan.org/pod/Test::Pod::Coverage),
[Test::Warn](https://metacpan.org/pod/Test::Warn).

The `dbtest` images additionally contain
[DBI](https://metacpan.org/pod/DBI),
[DBD::mysql](https://metacpan.org/pod/DBD::mysql),
[DBD::MariaDB](https://metacpan.org/pod/DBD::MariaDB),
[DBD::Pg](https://metacpan.org/pod/DBD::Pg),
[DBD::SQLite](https://metacpan.org/pod/DBD::SQLite),
[SQL::Abstract](https://metacpan.org/pod/SQL::Abstract).

The `mojotest` images are built on top of `dbtest` and include
[Mojolicious](https://metacpan.org/pod/Mojolicious).

# Supported tags and respective Dockerfile links

* Perl 5.34: [34-test, test, 34-dbtest, dbtest, 34-mojotest, mojotest (p34/Dockerfile)](https://github.com/Tekki/docker-perl-test/blob/master/p34/Dockerfile)

* Perl 5.32: [32-test, 32-dbtest, 32-mojotest (p32/Dockerfile)](https://github.com/Tekki/docker-perl-test/blob/master/p32/Dockerfile)

* Perl 5.30: [30-test, 30-dbtest, 30-mojotest (p30/Dockerfile)](https://github.com/Tekki/docker-perl-test/blob/master/p30/Dockerfile)

* Perl 5.28: [28-test, 28-dbtest, 28-mojotest (p28/Dockerfile)](https://github.com/Tekki/docker-perl-test/blob/master/p28/Dockerfile)

* Perl 5.26: [26-test, 26-dbtest, 26-mojotest (p26/Dockerfile)](https://github.com/Tekki/docker-perl-test/blob/master/p26/Dockerfile)

* Perl 5.24: [24-test, 24-dbtest, 24-mojotest (p24/Dockerfile)](https://github.com/Tekki/docker-perl-test/blob/master/p24/Dockerfile)

* Perl 5.22: [22-test, 22-dbtest, 22-mojotest (p22/Dockerfile)](https://github.com/Tekki/docker-perl-test/blob/master/p22/Dockerfile)

* Perl 5.20: [20-test, 20-dbtest, 20-mojotest (p20/Dockerfile)](https://github.com/Tekki/docker-perl-test/blob/master/p20/Dockerfile)

* Perl 5.16: [16-test, 16-dbtest, 16-mojotest (p16/Dockerfile)](https://github.com/Tekki/docker-perl-test/blob/master/p16/Dockerfile)

* Perl 5.10: [10-test, 10-dbtest, 10-mojotest (p10/Dockerfile)](https://github.com/Tekki/docker-perl-test/blob/master/p10/Dockerfile)

# How to use this image

From your development folder call

    $ docker container run --rm -e INSTALLDEPS=1 -v "$(pwd):/usr/src/app" tekki/perl:test

This will install the required and recommended dependencies from `cpanfile` and test your code in the selected Perl version.
