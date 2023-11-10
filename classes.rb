class Person
  def initialize(name)
    @name = name
  end
  
  def greet
    puts "Hello I am #{@name}"
  end

  def what
    puts "I am an instance method #{self}"
  end

  def self.what
    puts "I am a class method #{self}"
  end

end

person1 = Person.new("John")


person1.what
Person.what