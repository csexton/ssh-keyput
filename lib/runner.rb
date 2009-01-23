#!/usr/bin/env ruby 

# == Synopsis 
#   SSH Key Put Utility
#
# == Usage 
#   ssh-keyput [options]
#
#   For help see http://github.com/csexton/ssh-keyput

require 'optparse'

module SshKeyPut
  VERSION = "0.0.1"

  class Runner
    def self.runner
      #@keyput = SshKeyPut::Base.new

      self.parse_options 


    end

    def self.parse_options
      OptionParser.new do |opts|

        opts.summary_width = 25

        opts.banner = "ssh-keyput (#{SshKeyPut::VERSION})\n\n",
                      "usage: ssh-keyput [options...]\n",

        opts.separator ""
        opts.separator "Configuration:"

        opts.on('-v', '--version') do 
          puts "ssh-keyput version (#{SshKeyPut::VERSION})\n\n"
          exit
        end
        opts.on('-h', '--help') do
          #RDoc::usage() #exits app 
          puts "#{opts}\n"
          exit
        end
        opts.on('-V', '--verbose') do
          puts "Verbose!"
        end
        opts.on('-r', '--generate') do
          puts "Installing example .twitter_archive.yml to your home directory"
          exit
        end

      end.parse!
    end
  end
end

SshKeyPut::Runner.runner
