use strict;
use warnings;

use Path::Class;

my $dir = dir('/home/yaniv/work/python');

$dir->traverse(sub {

  my ($child, $cont, $indent) = @_;
  $indent //= 0;

  if ($indent == 0) {
    print $child, "\n";
  }
  else {
    print '   ' x ($indent - 1), '-> ', $child->basename;
    print '/' if $child->is_dir;
    print "\n";
  }

  $cont->($indent + 1);
});
