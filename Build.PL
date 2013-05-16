use 5.010;
use strict;
use warnings FATAL => 'all';
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Catalyst::Model::DBIx::DataStore',
    license             => 'Perl_5',
    dist_author         => q{Jon Sime <jonsime@gmail.com>},
    dist_version_from   => 'lib/Catalyst/Model/DBIx/DataStore.pm',
    release_status      => 'stable',
    configure_requires => {
        'Module::Build' => 0,
    },
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        #'ABC'              => 1.6,
        #'Foo::Bar::Module' => 5.0401,
    },
    add_to_cleanup     => [ 'Catalyst-Model-DBIx-DataStore-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();