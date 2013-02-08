package A;

sub new {
    $class = shift;
    $self = {
	name=>"name_" . $class,
    };
    
    return bless $self, $class;
}

sub my_name {
    $class = shift;
    print "I am " . $class->{name} . "\n";
}

sub DESTROY {
    print "destroy A\n";
}

1;
