package List;

my $head = undef;
my $last = undef;
my $count = 0;

sub new {
    my ($class, $val, $name) = @_;
    my $self = {};
    
    # init the head of the list
    if (!defined $head) {
	$head = $self;
	print "updated the head of the list ($head)" . "\n";
    }
    else {
	$last->{nextNode} = $self; # update previous node to point on this new one
    }

    $last = $self; # this object is now the last one
    
    $self->{value} = $val; # store the value
    $self->{name} = $name; # store another value
    $self->{nextNode} = undef; # reset next to nothing since this node is last

    $count ++;
    return bless $self, $class;
}

sub setVal {
    my ($class, $val) = @_;
    $class->{value} = $val;
}

sub getVal {
    my $class = shift;
    print $class->{value};
    print " " . $class->{name};
}

sub getNext {
    my $class = shift;
    return $class->{nextNode};
}

# return true if this is the last node, otherwise false.
sub isLast {
    my $class = shift;
    return 1 if !defined $class->{nextNode};
    return 0;
}

sub getLast {
    return $last;
}

sub getHead {
    return $head;
}

# looping through all the list and printing the values
sub showList {
    my $node = $head; # set temp node to the head
    
    while ( !$node->isLast() ) {
	print $node->{value} . " " . $node->{name} . "\n";
	$node = $node->{nextNode};
    }

    # printing last value. (should be defined but I check it just in case)
    print $node->{value} . " " . $node->{name} . " (last)\n" if defined $node->{value};
}

sub getLength {
    print "Size of list: " . $count . "\n";
}

# internal sub
sub _removeMe {
    my ($prev, $node, $val) = @_;
    my $done = 0;

    if ($node == $val) {
	print "Found: $val: $val->{name} and am going to remove it\n";
	if (!defined $prev) { # removing head
	    $head = $node->{nextNode};
	    $done = 1;
	}
	elsif ( !defined $node->{nextNode} ) { # removing last node
	    $prev->{nextNode} = undef;
	    $done = 1;
	}
	else { # removing middle node
	    $prev->{nextNode} = $node->{nextNode};
	    $done = 1;
	}
    }
    return $done;
}

sub removeNode {
    my $node = $head; # set temp node to the head
    my $prev = undef;
    my ($val) = shift;
    my $done = 0;

    while ( !$node->isLast() && !$done ) {
	$done = _removeMe($prev, $node, $val);
	$prev = $node;
	$node = $node->{nextNode};
    }
    if (!$done) { # check last node
	$done = _removeMe($prev, $node, $val);
    }

    if ( $done ) {
	$count --;
	print "Node ($val): $val->{name} has been removed\n";
    }
    else {
	print "Node ($val) was not found.  No changes.\n";
    }
}



1;
