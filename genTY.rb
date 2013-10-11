#!/usr/bin/env ruby

require 'optparse'
require 'yaml'

$cli={}


OptionParser.new do | opts |
  opts.banner = "Usage #{$0} [ -c --cmdfile <FILEPATH> ] | [--hostsfile <FILEPATH> ]"
  opts.on("-f", "--hostfile=val", String) { |hostfile| $cli['hostfile'] = hostfile }
  opts.on("-c", "--cmdfile=val", String)  { |cmdfile| $cli['cmdfile'] = cmdfile }
  opts.on_tail("-h", "--help")
  opts.parse!
end

session =  {}

#print $cli

if $cli.key? "hostfile"
  $cli['file'] = $cli['hostfile']
  session['name'] = $cli['hostfile'].split('.txt')[0]
elsif $cli.key? "cmdfile"
  $cli['file'] = $cli['cmdfile']
  session['name'] = $cli['cmdfile'].split('.txt')
else
    print "Please pass either commandfile or hostfile"
    exit
end

session['root'] = Dir.pwd

#print session
File.readlines($cli['file']).each { | host | print host }

print YAML.dump(session)
