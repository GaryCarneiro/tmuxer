#!/usr/bin/env perl

use strict ;
use warnings ;

my $TMUX='/usr/bin/tmux';

$ARGV[0] =~ /.*\./;
my $session_name = $1;


print "Got Argument: $ARGV[0]\n";
print "Got Regex: $session_name\n";

open(HF, "$ARGV[0]") ; #Host File

while(<HF>) {
    chomp;
    print "$_\n";
}

close(HF); 
