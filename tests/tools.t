#!/usr/bin/perl

#/////////////////////////////////////////////////////////////////////////////
#
# tools.t : This file contains unit tests for the Perl module
#
#/////////////////////////////////////////////////////////////////////////////

use strict;
use Test::More;
use lib '../', '.';

BEGIN {
   plan tests => 4,
        todo  => [1, 4]
}

require Tools::Lister;

my $obj = Lister->new();

require_ok "Tools::Lister";

can_ok("Lister", 'new');
can_ok("Lister", 'fill');
can_ok("Lister", 'disp');
