#!/usr/bin/env ruby


if ARGV[0].nil?
    print "Pass some hostfile Matey !!"
    exit 1
else
    print "Awright got file #{ARGV[0]}\n"
end


File.readlines(ARGV[0]).each { |host| print host }
