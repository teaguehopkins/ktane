#!/usr/bin/env ruby

require 'cliqr'

cli = Cliqr.interface do
  name 'greet'
  description 'A "hello world" app to demonstrate cliqr.'
  version '0.0.1' # optional; adds a version action to our simple command

  # main command handler
  handler do
    puts "Hi #{name}" if name? # name is command's option defined below
    puts "Please tell me your name" unless name?
  end

  option :name do
    description 'Your name.'
  end
end

cli.execute(ARGV)
