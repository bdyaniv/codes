#!/usr/bin/perl

$x=5;
$y=\$x;
print "y=".$$y,"\n"; #5
$x++;
print "y=".$$y,"\n"; #6
$n=\66;
print "n=".$$n,"\n";

$a = ['aa','bb','cc','dd'];
print "a=".@$a,"\n"; #4 (size of)
print "a=".$a,"\n";

print "num of elements: " . $#ARGV . " or " . scalar @ARGV,"\n";
my @arr = (1,4,7,9);
my @arr2 = (-4,-6,-8);
my @arr3 = (@arr, @arr2);

$, = ",";
print @arr3;
