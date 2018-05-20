#!/usr/bin/perl

#/////////////////////////////////////////////////////////////////////////////
#
# tools.t : This file contains unit tests for the Perl module
#
#/////////////////////////////////////////////////////////////////////////////

use strict;
use Test::More;
use lib '../', '.';

require lib::Skimmer;

BEGIN {
   plan tests => 4,
        todo  => [1, 4]
}

my $obj = Skimmer->new();

require_ok "lib::Skimmer";
can_ok("Skimmer", 'new');
can_ok("Skimmer", 'fill');
can_ok("Skimmer", 'disp');
