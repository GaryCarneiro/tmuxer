#!/usr/bin/env ruby

require 'optparse'
require 'yaml'

$cli={}


OptionParser.new do | opts |
  opts.banner = "Usage #{$0} [ -c --cmdfile <FILEPATH> ] | [--hostsfile <FILEPATH> ]"
  opts.on("-c", "--cmdfile=val", String) { |cmdfile|    if not cmdfile.nil? then  $cli['cmdfile'] = cmdfile end  }
  opts.on("-f", "--hostfile=val", String) { |hostfile | if not hostfile.nil? then  $cli['hostfile'] = hostfile end}
  opts.on_tail("-h", "--help")
  opts.parse!
end

session =  {}
#print hostfile

session['name'] =  $cli['hostfile']
session['cmd'] =  $cli['cmdfile']
#http://www.yaml.org/YAML_for_ruby.html
# => session['root'] = Dir.pwd
print session

