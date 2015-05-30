#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require 'sinatra'

get '/' do
  "Triggered vai GET"
end

post '/' do
  "Triggered vai POST"
end

put '/' do
  "Triggered vai PUT"
end

delete '/' do
  "Triggered vai DELETE"
end

patch '/' do
  "Triggered vai PATCH"
end

options '/' do
  "Triggered vai OPTIONS"
end
