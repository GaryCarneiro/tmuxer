#!/usr/bin/env perl

use strict;
use warnings;

my $TMUX='/usr/bin/tmux';

my $session_name = substr($ARGV[0],0,index($ARGV[0],'.tconf'));

print "Got Argument: $ARGV[0]\n";
print "Got SessionName: $session_name\n";

open(HF, "$ARGV[0]") ; #Host File

while(<HF>) {
    chomp;
    print "$_\n";
}

close(HF); 
