#!perl -T
use 5.010;
use strict;
use warnings FATAL => 'all';
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'Catalyst::Model::DBIx::DataStore' ) || print "Bail out!\n";
}

diag( "Testing Catalyst::Model::DBIx::DataStore $Catalyst::Model::DBIx::DataStore::VERSION, Perl $], $^X" );
