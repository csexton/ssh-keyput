#!/usr/bin/env ruby 

require 'optparse'
require 'yaml'
require 'fileutils'

class SshKeyPut

  attr_accessor :host, :key_file

  def initialize
    @key_file = "#{ENV["HOME"]}/.ssh/id_rsa.pub"
  end

  def version
    v = YAML.load_file "#{File.dirname(__FILE__)}/../VERSION.yml"
    "#{v[:major]}.#{v[:minor]}.#{v[:patch]}"
  end

  def put_key
    unless (File.exists? @key_file)
      puts "No key found, please run ssh-keyput --generate to make one"
    end

    #read in the key
    key_code = File.open(@key_file).read.strip

    system "ssh #{@host} \"mkdir ~/.ssh 2>/dev/null; chmod 700 ~/.ssh; echo '#{key_code}' >> ~/.ssh/authorized_keys; chmod 644 ~/.ssh/authorized_keys\""
  end

end


