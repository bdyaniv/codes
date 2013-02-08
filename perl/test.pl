#!/usr/bin/perl

my @matrix = ([4,6,8],
	      [1,5,9],
	      [7,2,0]
    );

#print @$_ . "\n" foreach (@matrix);


my %hash = (
    'books'  => {'lord of the rings' => 400,
		'Harry Poter'       => 200,
		'Python'            => 100,
    },
    'ebooks' => {'cooking'      => 50,
		 'vegan diet'   => 80,
    }
    );


foreach $key (keys %hash) {
    print "$key: " . $key{$_}, "\n";
    foreach $elem (keys $hash{$key}) {
	print "$elem: " . $hash{$key}{$elem}, "\n";
    }
}
