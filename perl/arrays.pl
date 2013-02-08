#!/usr/bin/perl

use warnings;
use strict;

package stack;

my @arr = ();
my $max = 20;
my $range = 100;

sub init {
    my ($class) = shift;
    my $i=0;
    while ($i<$max) {
	$i++;
	pushit( int(rand($range)) );
    }
    my $self = {};
    return bless $self, $class;
}

sub pushit {
    my ($num) = @_;
    push @arr, $num;
}
sub popit {
    return pop @arr;
}
sub showstack {
    print "@arr\n";
}

package main;
#use stack;
my $aa = init(stack);
showstack();
my $x = popit();
print "poping out $x\n";
print "after:\n";
showstack();
