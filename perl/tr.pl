#!/usr/bin/perl # -w
use warnings;
$string = 'the cat sat on the mat at 8pm.';
$x = ($string =~ tr/a/b/);

{
    no warnings;
    print "$x: $string\n";
    $c = 5;
}

@xx = ();
for($i=0;$i<20;$i++) {
    push @xx, int(rand(100));
}

print "your array is:\n@xx\n";
@cc = grep { $_ % 2 == 0}  @xx;
print "your array now is:\n@cc\n";

print "your array is:\n@xx\n";
@cc = map {$_ /2} @xx;
print "your array now is:\n@cc\n";
