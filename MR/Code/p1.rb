#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

class GreetBase
  def title
    puts self.class.to_s.downcase
  end
end

class Hello < GreetBase
end

h = Hello.new
h.title
