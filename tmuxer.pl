#!/usr/bin/env perl

use strict ;
use warnings ;

$TMUX='/usr/bin/tmux';

print "Got Argument: $ARGV[0]\n" ;

open(HF, "$ARGV[0]") ; #Host File

