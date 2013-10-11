#!/usr/bin/env ruby

require 'optparse'


$hostFile = ''
$cmdFile = ''


OptionParser.new do | opts |
  opts.banner = "Usage #{$ARGC} [ -c --cmdfile <FILEPATH> ] | [--hostsfile <FILEPATH> ]"
  opts.on("-c", "--cmdfile=val", String) { | $cmdFile | }
  opts.on("-f", "--hostfile=val", String) { |$hostFile| }
  opts.on_tail("-h", "--help")
  opts.parse!
end

