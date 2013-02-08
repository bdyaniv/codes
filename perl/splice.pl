@a = qw(eden ben david is a great boy. today we went to ride his bike. He is good. the name of his bike is mini glider and he got it for his 2 years birthday);
@b = qw(and tal);

%w = ('a'=>'A', 'e'=>'E', 'i'=>'I', 'o'=>'O', 'u'=>'U');

#@c = splice(@a, 1,2,@b);
$str = join(' ', @a);
foreach $key (keys %w) {
    $str=~s/$key/$w{$key}/ig;
}
print "$str\n";
