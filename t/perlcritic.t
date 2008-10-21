#!perl

use warnings FATAL => 'all';
use strict;
use File::Spec;
use Test::More;

if ( not $ENV{TEST_AUTHOR} ) {
    my $msg
        = 'Author test.  Set $ENV{TEST_AUTHOR} to a true value to run.';
    plan( skip_all => $msg );
}

eval { require Test::Perl::Critic; };
if ($@) {
    my $msg = 'Test::Perl::Critic required to criticise code';
    plan( skip_all => $msg );
}

#my $rcfile = File::Spec->catfile( 't', 'perlcriticrc' );
#Test::Perl::Critic->import( -profile => $rcfile );
#all_critic_ok();
Test::Perl::Critic::all_critic_ok();
