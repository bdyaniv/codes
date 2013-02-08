$x = 5;
$xx = \$x;
print $$xx;

@a = qw(hello there ma kore?);
$aa = \@a;
print "@{$aa}";

use Data::Dumper;
%h = (1=>2,2=>3);
$h = \%h;
print Dumper(%$h);

$myadd = sub {return $_[0] + $_[1]};
$mymul = sub {return $_[0] * $_[1]};
$mydiv = sub {return $_[0] / $_[1]};
$mysub = sub {return $_[0] - $_[1]};
print &$myadd(4,5),"\n";
print &$mymul(4,5),"\n";
print &$mydiv(4,5),"\n";
print &$mysub(4,5),"\n";
