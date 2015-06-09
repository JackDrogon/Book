#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

module M
  module Methods
    def generate_method(*args)
      args.each do |method_name|
        define_method(method_name) { puts method_name }
      end
    end
  end

  def self.included(receiver)
    receiver.extend         Methods
  end
end

class C
  include M
  generate_method :method1, :method2
end

c = C.new
c.method1
c.method2
