#!/usr/bin/env ruby

require 'optparse'


$hostFile = ''
$cmdFile = ''

if ARGV[0].nil?
    print "File Argument Missing"
    exit 1
else
    print "Got input file #{ARGV[0]}\n"
end

OptionParser.new do |opts|
  opts.banner = "Usage #{$ARGC} [ -c --cmdfile <FILEPATH> ] | [--hostsfile <FILEPATH> ]"



File.readlines(ARGV[0]).each { |host| print host }