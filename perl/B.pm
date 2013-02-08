package B;
push @INC, '/home/yaniv/work/perl';
use A;
#use base qw(A); # works
@ISA = ("A"); # works
#our @ISA = qw(A);
print "@ISA\n";
sub DESTROY {
    print "destroy B\n";
}

1;
