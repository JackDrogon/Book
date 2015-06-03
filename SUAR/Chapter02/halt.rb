#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

require 'sinatra'

get '/halt' do
  "You will not see this output"
  halt 500
end
