class Person
  def initialize(name)
    @name = name
  end
  
  def greet
    puts "Hello I am #{@name}"
  end
end

person1 = Person.new("John")
person1.greet

class Person
  def bye
    puts "Bye Bye!"
  end
end

person1.bye