#!/usr/bin/env ruby

=begin
This script generates TMUXinator input files in YAML Format
=end

#############################################
#Importing Modules
require 'optparse'
require 'yaml'
#############################################

$cli={}

hostList = []

session =  {}
session['root'] = Dir.pwd

#############################################
#Option Parsing
OptionParser.new do | opts |
  opts.banner = "Usage #{$0} [ -c --cmdfile <FILEPATH> ] | [--hostsfile <FILEPATH> ]"
  opts.on("-f", "--hostfile=val", String) { |hostfile| $cli['hostfile'] = hostfile }
  opts.on("-c", "--cmdfile=val", String)  { |cmdfile| $cli['cmdfile'] = cmdfile }
  opts.on_tail("-h", "--help")
  opts.parse!
end
#############################################

#print $cli

#############################################
#Option Validatin

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
#############################################



#############################################

File.readlines($cli['file']).each { | host | hostList << { host.chomp => "ssh -2 #{host.chomp}" }  } # See dump_yaml.rb

print "-" * 200
print "\nHost Dictionary = #{hostList} \n" 
session['windows'] = hostList

print  "-" * 200
print "\nSession Dictionary = #{session}\n"
print  "-" * 200

print "\nYAML Dump for Session Dictionary is .. \n#{YAML.dump(session)}"
