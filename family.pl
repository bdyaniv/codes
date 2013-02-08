use warnings;
use strict;
use Test::Simple qw(no_plan);

my %family = ();

$family{adi}{married} = 'lior';
$family{adi}{kids} = ['bar'];
$family{danielle}{married} = 'yaniv';
$family{danielle}{kids} = ['eden'];
$family{noa}{married} = 'david';
$family{dvora}{married} = 'amos';
$family{dvora}{kids} = ['yaniv','adi','noa'];
$family{lauren}{married} = 'bill';
$family{lauren}{kids} = ['danielle','evan'];

$, = ",";

#print keys %family,"\n";
#print $family{noa}{kids},"\n";

# receives a referance to a hash of family.
# prints mother as key and her kids as an anonymous array
sub mother_and_kids {
    my ($ref_fam) = @_;
    foreach (keys %{$ref_fam}) {
	print "$_: @{$ref_fam->{$_}{kids}}\n" if defined $ref_fam->{$_}{kids};
    }
}

sub show_all_family {
    foreach my $key (keys %family) {
	print "$key is married to $family{$key}{married}\n";
	print "Kids: @{$family{$key}{kids}}\n" if defined $family{$key}{kids};
#	ok ( $family{$key}{married} eq "lior", $family{$key}{married});	
    }

ok ( lc($family{adi}{married}) eq "lior", "check adi->lior");	
ok ( lc($family{lauren}{married}) eq "bill", "check lauren->bill");	

}

print "Show mother and kids:\n";
mother_and_kids(\%family);

print "Show all family:\n";
show_all_family();

=dd
foreach my $key (keys %family) {
    print "$key is married to $family{$key}{married}\n";
    print "Kids: @{$family{$key}{kids}}\n" if defined $family{$key}{kids};
    
}
=cut
