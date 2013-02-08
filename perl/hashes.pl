#!/usr/bin/perl

use strict;
use warnings;

my %kids = (
    danielle => 1984,
    eden  =>2010,
    tal   =>2012,hhhj
    yaniv =>1976,
);

#print $kids{tal},"\n";
#print $kids{yaniv},"\n";

=begin
foreach my $key (sort keys %kids) {
    my $name = $key;
    $key =~ /(^\w)/;
    my $first = uc $1;
    $key =~ s/^\w/$first/;
    print $key . " was born in $kids{$name}\n";
}
=cut

my %h = (
    danielle => {'month' => 'June',
		 'year'  => 1984,
		 'day'   => 26,
    },
    eden  =>    {'month' => 'August',
		 'year'  => 2010,
		 'day'   => 31,
    },
    tal   =>    {'month' => 'July',
		 'year'  => 2012,
		 'day'   => 18,
    },
    yaniv =>    {'month' => 'August',
		 'year'  => 1976,
		 'day'   => 8,
    }    
    );

foreach my $key (sort keys %h) {
    print "$key was born: ";
    print $h{$key}{year}. "/";
    print $h{$key}{day}. "/";
    print $h{$key}{month}, "\n";
}
