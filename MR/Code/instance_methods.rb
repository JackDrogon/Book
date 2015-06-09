#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

class Greeting
  def initialize(text)
    @text = text
  end

  def welcome
    @text
  end
end

my_object = Greeting.new "Hello"

puts my_object.class
puts my_object.class.instance_methods(false)
puts my_object.instance_variables
# puts my_object.class.private_instance_methods
# puts my_object.class.public_instance_methods

puts my_object.class.instance_methods == my_object.methods # => true

puts my_object.methods.grep /^we/
