#!/usr/bin/perl

read(STDIN, $save_string, $ENV{CONTENT_LENGTH});
print $save_string,"\n";
print $ENV{CONTENT_LENGTH}, "\n";
