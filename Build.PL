use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
   module_name         => 'skimmer',
   license             => 'perl',
   dist_author         => 'Godfrain Jacques KOUNKOU <gkounkou@gmail.com>',
   dist_abstract       => 'Educational purpose skimmer implementation',
   create_makefile_pl  => 0,
   script_files        => 'main.pl',
   create_readme       => 0,
   requires            => {
   },
   build_requires      => {
      'Test::More'     => '0.47',
   },
);

$builder->create_build_script();
