#!/usr/bin/perl

#/////////////////////////////////////////////////////////////////////////////
#
# Lister.pl : This file is the Tools package 
#
#/////////////////////////////////////////////////////////////////////////////

use strict;
use lib '.';

package Skimmer; # namespace  {

# print "Inside the Tools::Lister.pm module\n"; 

my @arrListerNode;

# simple constructor
sub new {
   if (@_) {
      my $class = shift @_;
      return bless { 
	 "" => undef 
      }, $class;
   }
}

# Function to fill the array with the different
# token obtained from the upper level call
sub fill {
   # print "Filling the Lister with : ", @_, "\n";
   # print "\n";
   unshift @arrListerNode, @_;
}

# Function disp to display the content of the array
sub disp {
   foreach my $i (0 .. $#arrListerNode) {
      print $i, ": ", $arrListerNode[$i], "\n";
   }
}

return 1;
