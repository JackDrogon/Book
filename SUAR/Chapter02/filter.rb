#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require 'sinatra'

before do
  @name = "Haha"
  puts "Before a request action."
end

get '/' do
  "Hello, #{@name}."
end

after do
  @name = "PiPi"
  puts "After a request action."
end
