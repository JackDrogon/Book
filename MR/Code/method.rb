#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

class Hello
  def initialize(text)
    @text = text
  end
end

h = Hello.new "Hello"

def h.haha
  puts "Haha, #{@text}"
end

h.haha
