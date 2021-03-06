use 5.006;    # our
use strict;
use warnings;

package Policy;

# ABSTRACT: Policies, Standards and Guidelines for the world of Perl

our $VERSION = '0.001000';

# AUTHORITY

1;

=head1 ABOUT THIS NAMESPACE

C<Policy> is a namespace dedicated to documenting various current best practices and
recommendations for scopes as narrow as individual authors, or guidelines as broad as all of CPAN.

Existence of these policies are not necessarily gospel, but merely a canonicalization of human
knowledge in a more consumable form that doesn't require active discussion.

Members of a group may wish to enforce these standards within code they control, but there is
nothing stopping an individual consulting these standards, and adopting them as their own anyway.

In fact, encouraging the adoption of such standards, especially in regards to C<Toolchain> and
C<P5P> standards is highly encouraged.

=head1 SUB NAMESPACES

At this time, there are three primary categories:

=over 4

=item * L<< C<Policy::Org>|Policy::Org >> - Policies under the authority of specific organizations

Examples:

    Policy::Org::P5P
    Policy::Org::Toolchain
    Policy::Org::ShadowCat
    Policy::Org::Debian

B<NOTE:> There may be special cases for very high priority organizations within the CPAN ecosystem
such that the need for an C<Org::> prefix is optional. Both C<P5P> and C<Toolchain> are prime
candidates for a priority organization. However, the second of those two are unlikely to be classes
as high priority enough to warrant that naming.

=item * L<< C<Policy::Project>|Policy::Project >> - Policies dictated by specific projects

Examples:

    Policy::Project::Moose
    Policy::Project::DBIC

Projects typically can be distinguished from Organizations in that: Projects tend to be narrow
scoped to a very specific domain, whereas Organizations are broad having opinions that can apply to
almost anything.

Projects often gravitate around a particular namespace, such as the examples given, whereas
organizations are likely to be dabbling in a plethora of seemingly unrelated concerns.

=item * L<< C<Policy::Author>|Policy::Author >> - Policies dictated by specific authors

These entries should be strictly under the control of the named PAUSE identifier,
and people injecting under other peoples PAUSE identifier will have PAUSE admins gladly taking
control of things under that name that the individual did not authorize.

Examples:

    Policy::Author::AUTARCH
    Policy::Author::KENTNL
    Policy::Author::RIBASUSHI

=back

=head1 AUTHORSHIP OF NAMESPACES

The exact recommended layout of any policy sub-namespace, should in itself (at some stage) have a
policy encouraging a uniform layout. However, in the interim, my personal suggestion is as follows:

    Policy::<Category>::<Name>::<PolicyId>_<PolicyWordToken>

Where:

=over 4

=item * B<C<E<lt>CategoryE<gt>>> is one of C<Org|Project|Author>

=item * B<C<E<lt>NameE<gt>>> is your organizational identifier as discussed in
L<SUB NAMESPACES|/SUB NAMESPACES>

=item * B<C<E<lt>PolicyIdE<gt>>> is zero-padded 4-digit number such as C<0001>

=item * B<C<E<lt>PolicyWordTokenE<gt>>> is a simple word expression intended to give some sort of
identification, for example: C<SimpleVersions>

=back

The purpose here of the C<E<lt>PolicyIdE<gt>_E<lt>PolicyWordTokenE<gt>> is to enforce a simplified
visual and machine sort order that makes it clear the order in which the policies were added, to
make it obvious which policies were added more recently.

The namespace itself B<< C<< Policy::E<lt>CategoryE<gt>::E<lt>NameE<gt> >> >> should serve as an
index to the policies beneath it, grouping policies together by topic, severity, importance,
deprecation status, etc, each with a short blurb describing what will be found within.

Granted, such indexes are not entirely required, given the existence of MetaCPAN and friends,
which will generate a measure of index from package name and abstract alone. But it may be desired
to expand slightly beyond the terse requirements of abstracts, as well as being able to group
policies in multiple ways.

=head1 AUTHORSHIP OF POLICIES

Each policy is intended to be a "Living document", which should aim to remain "Current" at all
times.

Only if an entire document fails to make sense should the document itself be deprecated.

=cut
