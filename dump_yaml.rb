#!/usr/bin/env ruby

require 'yaml'
d = {"root"=>"/Users/carneiro/git/GitHub/tmuxer", "name"=>"123", "windows"=> [{"abc.com" => 'ssh -2 -4 abc.com' } }
print YAML.dump(d)
