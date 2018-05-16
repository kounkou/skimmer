#!/usr/bin/perl

#/////////////////////////////////////////////////////////////////////////////
#
# tools.t : This file contains unit tests for the Perl module
#
#/////////////////////////////////////////////////////////////////////////////

use diagnostics;
use warnings;
use strict;
use Test::More tests => 1;
use lib '../', '.';

require Tools::Lister;

my $obj1 = Lister->new();

can_ok("Lister", 'new');


