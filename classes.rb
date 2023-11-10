class Foo
  def an_instance_method
    puts "I am instance method"
  end

  def self.class_method
    puts "I am class method"
  end
end

foo_1 = Foo.new
foo_2 = Foo.new

foo_1.an_instance_method
foo_2.an_instance_method
Foo.class_method

def foo_1.singleton_method
  puts "I am a singleton method"
end

foo_1.singleton_method

class << foo_2
  def another_singleton_method
    puts "I am another singleton method"
  end
end

foo_2.another_singleton_method
