#!/usr/bin/env ruby
Version = '0.0.1 mac edition'

if `id -u`.to_i == 0
  puts 'apt-nyaa launched by root, will exit now'
  puts 'please launch as normal user'
  exit
end

Commands = {:install => '', :list => ''}


def get(url)
  require 'net/http'
  require 'uri'
  uri = URI.parse(url)
  resp = Net::HTTP.get_response(uri)
end

def address 
  'https://raw.github.com/nyaa/MacScript/master/'
end

def version
  "apt-nyaa #{Version}"
end

def commands_list
nil
end

def help
  [version, commands_list].join("\n")
end

def second_parametres
  dup = ARGV.dup
  dup.delete_at(0)
  dup
end

def install
  dup = second_parametres
  puts "You didn't choose what do you want to install" if dup.empty?
  dup.each do |i|
    url = "#{address}/#{i}"
    puts "installing #{url}"
    puts `curl -L #{url}| cat` #bash -s stable
  end
end


case ARGV[0]
  when 'install'
    install
  when 'list'
    `curl -L #{address}/FirstInstall/list.txt | cat`
  when 'search'
    list = `curl -L #{address}/FirstInstall/list.txt`
    second_parametres.each do |p|
    end

    puts 'searching'
  when 'help'
    puts help
  when 'version'
    puts version
  when 'upgrade'
    puts 'Not implemented yet'
  when nil
    puts help
  else
    puts "#{ARGV[0]} command not found"
  end
