<!-- this file is generated via docker-builder/generate.pl, do not edit it directly -->

# Perl-Test

Perl test images.

Different Perl versions with
[CPAN::Changes](https://metacpan.org/pod/CPAN::Changes),
[Devel::Cover](https://metacpan.org/pod/Devel::Cover) and
[Pod::Coverage](https://metacpan.org/pod/Pod::Coverage).

The `dbtest` images additionally contain
[DBI](https://metacpan.org/pod/DBI),
[DBD::MariaDB](https://metacpan.org/pod/DBD::MariaDB),
[DBD::mysql](https://metacpan.org/pod/DBD::mysql),
[DBD::Pg](https://metacpan.org/pod/DBD::Pg),
[DBD::SQLite](https://metacpan.org/pod/DBD::SQLite).

# Supported tags and respective Dockerfile links

* Perl 5.30: [30-test, test, 30-dbtest, dbtest (p30/Dockerfile)](https://github.com/Tekki/docker-perl-test/blob/master/p30/Dockerfile)

* Perl 5.28: [28-test, 28-dbtest (p28/Dockerfile)](https://github.com/Tekki/docker-perl-test/blob/master/p28/Dockerfile)

* Perl 5.26: [26-test, 26-dbtest (p26/Dockerfile)](https://github.com/Tekki/docker-perl-test/blob/master/p26/Dockerfile)

* Perl 5.24: [24-test, 24-dbtest (p24/Dockerfile)](https://github.com/Tekki/docker-perl-test/blob/master/p24/Dockerfile)

* Perl 5.22: [22-test, 22-dbtest (p22/Dockerfile)](https://github.com/Tekki/docker-perl-test/blob/master/p22/Dockerfile)

* Perl 5.20: [20-test, 20-dbtest (p20/Dockerfile)](https://github.com/Tekki/docker-perl-test/blob/master/p20/Dockerfile)

* Perl 5.16: [16-test, 16-dbtest (p16/Dockerfile)](https://github.com/Tekki/docker-perl-test/blob/master/p16/Dockerfile)

* Perl 5.10: [10-test, 10-dbtest (p10/Dockerfile)](https://github.com/Tekki/docker-perl-test/blob/master/p10/Dockerfile)

# How to use this image

From your development folder call

    $ docker container run --rm -v "$(pwd):/usr/src/app" tekki/perl:test

This will test your code in the selected Perl version.
