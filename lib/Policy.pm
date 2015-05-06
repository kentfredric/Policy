# PODNAME: Policy
# ABSTRACT: Policies, Standards and Guidelines for CPAN Modules
our $VERSION = 0.001000;

__END__

=pod

=encoding UTF-8

=head1 NAME

Policy - Policies, Standards and Guidelines for CPAN Modules

=head1 VERSION

version 0.000000

C<Policy> is a namespace dedicated to documenting the human level of how code should be written,
detailing current best practices and recommendations for scopes as narrow as individual authors,
or guidelines as broad as all of CPAN.

Existence of these policies are not necessarily gospel, but merely a canonicalisation of human
knowledge in a more consumable form that doesn't require active discussion.

Members of a group may wish to force these standards on code they control, but there is nothing
stopping an individual seeing these standards, and adopting them as their own anyway.

In fact, encouraging the adoption of such standards, especially in regards to C<Toolchain> and C<P5P>
standards is highly encouraged.

=head1 SUB NAMESPACES 

At this time, there are three primary categories:

=over 4

=item * L<< C<Policy::Org>|Policy::Org >> - Policies under the authority of specific organisations

Examples:

    Policy::Org::P5P
    Policy::Org::Toolchain
    Policy::Org::ShadowCat

=item * L<< C<Policy::Project>|Policy::Project >> - Policies dictated by specific projects

Examples:

    Policy::Project::Moose
    Policy::Project::DBIC

=item * L<< C<Policy::Author>|Policy::Author >> - Policies dictated by specific authors

These entries should be strictly under the control of the named PAUSE identifier,
and people injecting under other peoples PAUSE identifier will have PAUSE admins gladly
taking control of things under that name that the individual did not authorise.

Examples:

    Policy::Project::AUTARCH
    Policy::Project::KENTNL
    Policy::Project::RIBASUSHI

=back

=head1 AUTHORSHIP OF NAMESPACES

The exact recommended layout of any policy namespace, should in itself have a policy dictating it
at some stage. However, in the interim, my personal suggestion is as follows:

    Policy::<Category>::<Name>::<PolicyId>_<PolicyWordToken>

Where:

=over 4

=item * B<C<E<lt>CategoryE<gt>>> is one of C<Org|Project|Author>

=item * B<C<E<lt>NameE<gt>>> is your organisational identifier as discussed in L<SUB NAMESPACES|/SUB NAMESPACES> 

=item * B<C<E<lt>PolicyIdE<gt>>> is zero-padded 4-digit number such as C<0001>

=item * B<C<E<lt>PolicyWordTokenE<gt>>> is a simple word expression intended to give some sort of identification, for example: C<SimpleVersions>

=back

The purpose here of the C<E<lt>PolicyIdE<gt>_E<lt>PolicyWordTokenE<gt>> is to enforce a simplified visual sort order
that makes it clear the order in which the policies were added, to make it obvious which policies were
added more recently.

The namespace itself B<< C<< Policy::E<lt>CategoryE<gt>::E<lt>NameE<gt> >> >> should serve as an index to the policies
beneath it, grouping policies together by topic, severity, importance, deprecation status, etc, each with a short 
blurb describing what will be found within.

Granted, such indexes are not entirely required, given the existence of MetaCPAN and friends, which will generate
a measure of index from package name and abstract alone. But it may be desired to expand slightly beyond the
terse requirements of abstracts, as well as being able to group policies in multiple ways.

=head1 AUTHORSHIP OF POLICIES

Each policy is intended to be a "Living document", which should aim to remain "Current" at all times.

Only if an entire document fails to make sense should the document itself be deprecated.

=head1 AUTHOR

Kent Fredric <kentnl@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Kent Fredric <kentfredric@gmail.com>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
