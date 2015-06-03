#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require 'sinatra'

get '/' do
  redirect '/hello'
end

get '/hello' do
  "Hello,World!"
end
