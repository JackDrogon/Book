#!/usr/bin/env ruby
# -*- coding:utf-8 -*-

class Assistant
  def initialize(name)
    @name = name
  end

  def real_email
    "(#{@name})"
  end
end

class Manager < Delegate(Assistant)
  def initialize(assistant)
    super(assistant)
  end
end
