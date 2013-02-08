#!/usr/bin/perl

my @matrix = ([4,6,8],
	      [1,5,9],
	      [7,2,0]
    );


for( $i=0; $i<3; $i++) {
    for ($j=0; $j<3; $j++) {
	print $matrix[$i][$j], " ";
    }
    print "\n";
}
