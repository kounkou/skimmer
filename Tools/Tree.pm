# Tree implementation

use strict;
use warnings;

package Tree;

my %tree = (
   value => 0,
   l     => undef,
   r     => undef
);

### Tree constructor
sub new {
   print "creating object\n";

   if (@_) {
      my $obj = shift @_;
      return bless {
	 value => 0,
	 l     => undef,
	 r     => undef
      }, $obj;
   }
}

### add nodes to the tree
sub addNode {
   my ($obj, $root, $left, $right) = @_;

   if ($root and $left and $right) {
      $tree{value} = $root;

      # The code here is for testing only, 
      # shall be removed as soon as the right 
      # strategy is found 
      $tree{l} = bless { value => $left,
	                 left  => undef,
			 right => undef
                        };
      $tree{r} = bless { value => $right,
			 left  => undef,
			 right => undef
                       };

      
      # printing the child elements 
      print "left  child elt : ", $tree{l}->{value}, "\n";
      print "right child elt : ", $tree{r}->{value}, "\n";
   }
}

### print the tree
sub print {
   print "printing the element on node\n"; 
   print join ", ", %tree{value};
   print "\n";
}
