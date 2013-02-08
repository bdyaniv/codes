#!/usr/bin/perl

use warnings;
#use strict;
use CGI ':standard';

#print "Content-type: text/html\n\n";
print header();
print start_html();

print "<p>printing params</p>";
#for $i (param()) {
#    print "<b>", $i, "</b>: ", param($i), "<br>\n";
#}

print end_html();
