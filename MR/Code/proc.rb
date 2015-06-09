class MyProc
  def initialize(&block)
    @block = block
  end

  def to_proc
    @block
  end

  def call(*args)
    puts @block.class
    @block.call(*args)
  end
end

p = MyProc.new {puts "Hello"}
p.call

puts "----------------------------"

p1 = MyProc.new { |x, y| print x, ' ', y, "\n"}
p1.call(1, 2)
puts "----------------------------"

def f()
  yield 1, 2 # 此处yeild调用的是to_proc, @blcok.call
  puts "Haha"
end

f(&p1)
