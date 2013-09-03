#!/usr/bin/env perl

use strict ;
use warnings ;

my $TMUX='/usr/bin/tmux';

print "Got Argument: $ARGV[0]\n";

open(HF, "$ARGV[0]") ; #Host File

while(<HF>) {
    chomp;
    print "$_\n";
}

close(HF); 
