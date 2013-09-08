#!/usr/bin/env ruby


$TMUX='/usr/bin/tmux'

if not ARGV[0].nil? then   tconfFile = ARGV[0] else print "Need Input .tconf file.\ne.g. : #{$0} my.tconf "; exit 1; end
tmuxSessionName = ARGV[0].split('.tconf')
