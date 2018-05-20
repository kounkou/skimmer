#!/usr/bin/perl

#/////////////////////////////////////////////////////////////////////////////
#
# main.pl : This file is the entry point for the 
#           file shower
#
#/////////////////////////////////////////////////////////////////////////////

use strict;
use warnings;
use lib '.';

require Tools::Lister;

# The main routine will traverse the files given
# hierarchy and then analyze each indivual file
# for the require directive.
sub main {
   my $arg = shift @_;
   # print "The given dir is : ", $arg, "\n";
   traverse($arg);
}

# For each token, analyze the content looking 
# for require statement   
sub traverse {
   my ($token) = @_;
   
   # print $token, "\n";
   Lister::fill($token);

   return if not -d $token;
   opendir my $handle, $token or die;
   while (my $elt = readdir $handle) {
      next if $elt eq '.' or $elt eq '..';
      traverse("$token/$elt");
   }
   close $handle;
}

### creating tree function
sub createTree {
  my $obj = Tree::new(); 

  $obj->Tree::addNode(1, 2, 3); # root, left and right
  $obj->Tree::print();
}

# main program entry point
main(@ARGV);
# createTree();
Lister::disp();

