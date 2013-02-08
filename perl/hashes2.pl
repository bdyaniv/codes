#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

my %kids = (
    danielle => 1984,
    eden  =>2010,
    tal   =>2012,
    yaniv =>1976,
    array => [1,2,3,4,5],
);

readHash(\%kids, 1);
print "after:\n";
readHash(\%kids, 0);
#print Dumper(%kids);

sub readHash {
    my ($ref, $mode) = @_;
    foreach my $e (keys %{$ref}) {
	print "e: " . $e,"\n";
	if (ref($e) ne 'ARRAY') {
	print $e . ": " . $ref->{$e} . "\n";
	}
	else {
	    print "MY Array: \n";
	    print $e . ": " . $$ref->{$e}[0]. " " . $$ref->{$e}[1] . "\n";
	}
	if ($mode) {
	    if ($ref->{$e} > 2000) {
		$ref->{$e} = "kid";
	    }
	}
    }

}

