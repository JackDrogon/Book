#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

class MyClass
  def method_one
    def method_two; "Hello"; end
  end
end

m = MyClass.new
# m.method_two

m.method_one
puts m.method_two


# 体现了当前类为self.class 定义的method_two不是当前对象的一个方法，而是类的实例方法
m1 = MyClass.new
puts m1.method_two
