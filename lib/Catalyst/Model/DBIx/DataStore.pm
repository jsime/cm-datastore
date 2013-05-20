package Catalyst::Model::DBIx::DataStore;

use 5.010;
use strict;
use warnings FATAL => 'all';

use DBIx::DataStore ( config => 'yaml' );

=head1 NAME

Catalyst::Model::DBIx::DataStore

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

A very simple Catalyst Model which wraps DBIx::DataStore, with the main goal to
provide a common way to retrieve a server lifetime database handler.

    ... usage ...

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 SUBROUTINES/METHODS

=head2 new

Initializes the model's database connection

=cut

sub new {
    my $self = shift->next::method(@_);
    my ($c, $config) = @_;

    die "No datastore configured!" unless exists $config->{'datastore'};

    $self->{'dbh'} = DBIx::DataStore->new($config->{'datastore'});

    return $self;
}

=head2 db

Returns the current DBIx::DataStore object.

=cut

sub db {
    my ($self) = @_;

    return $self->{'dbh'};
}

=head1 AUTHOR

Jon Sime, C<< <jonsime at gmail.com> >>

=head1 BUGS

Please file any bugs or support requests at the official GitHub repository, located
at L<https://github.com/jsime/cm-datastore/issues>.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Catalyst::Model::DBIx::DataStore

You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Catalyst-Model-DBIx-DataStore>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Catalyst-Model-DBIx-DataStore>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Catalyst-Model-DBIx-DataStore>

=item * Search CPAN

L<http://search.cpan.org/dist/Catalyst-Model-DBIx-DataStore/>

=back


=head1 LICENSE AND COPYRIGHT

Copyright 2013 Jon Sime.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See L<http://dev.perl.org/licenses/> for more information.


=cut

1;
