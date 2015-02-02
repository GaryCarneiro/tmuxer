tmuxer
======

This is my wrapper over TMUXinator.
TMUXinator AFAIK doesnt allow text files as input.

This script genTY.rb (Generate Tmuxinator YAML) takes -f  as option for a file which contains  list of hosts.
Once host file is read, it generates new TMUX ssh window for each host.

def hostsfile(filepath)
        say "Using hosts file #{filepath}"
        exit!("That file doesn't exist.") unless File.exists?(filepath)
        hostsList = []
        #File.readlines(filepath).each { | host | hostsList << { host.chomp => "ssh  #{host.chomp}"} } 
        File.readlines(filepath).each { | host | hostsList <<  host.chomp }
        yamlOutFileName = "~/.tmuxinator/" + File.basename(filepath, ".txt") +'.yml'
        p yamlOutFileName
        p hostsList
end
