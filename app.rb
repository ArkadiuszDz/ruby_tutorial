# x = 10

# this loop does nothing necessary

# until (text = gets.chomp) == "exit"
#     puts "You typed #{text}."
# end


# while (text = gets.chomp) != "exit"
#     puts "You typed #{text}."
# end

# array

# person = ["John", "Doe", 33, "developer"]

# puts "First name: #{person[0]}"
# puts "Age of the person: #{person[2]}"

# puts "#{1 + 1}"
# puts '#{1 + 1}'

# hash

# person_data = { "first_name" => "John", "last_name" => "Doe", "age" => 33, "job" => "developer", 3 => 66 }
# person_data['hobby'] = "sports"
# puts "Person's first name: #{person_data['first_name']}"
# puts "Person's hobby: #{person_data['hobby']}"
# puts "Person's height #{person_data['height']}"
# puts person_data[3]

# puts "string"
# puts "aa".object_id
# puts "aa".object_id
# puts "aa".object_id

# puts "symbol"
# puts :aa.object_id
# puts :aa.object_id
# puts :aa.object_id

# puts :my_symbol

# person_1 = { :first_name => "John", :last_name => "Doe" }
# person_2 = { :first_name => "Mark", "last_name": "Johnson" }
# person_3 = { "first_name": "James", "last_name": "Erikson" }

# puts "Second person's name #{person_2[:first_name]}"
# puts "Third person's name #{person_3[:first_name]}"

# puts person_1.values


# person_1.each { |key, value| puts "The key is #{key} and the value is #{value}" }


# def my_func(first_name, last_name = "Smith")
#   puts "Hello #{first_name} #{last_name}."
# end

# my_func "John"

# def test(a, b=90, *rest)
#   puts "First arugment #{a}."
#   puts "Second argument #{b}."
#   puts "Third argument #{rest}."
# end

# test 1, 2

# puts '------------------------'

# test 11,33,44,55

# def test2 (a=32, b=44, c)
#   puts "a is: #{a}"
#   puts "b is: #{b}"
#   puts "c is: #{c}"
# end

# test2 90, 100

# def person_details(first_name:, last_name:, job:, age:, city: 'Washington D.C.', phone: 909090909)
#   puts "First name is #{first_name}."
#   puts "Last name is #{last_name}."
#   puts "The job is #{job}."
#   puts "The person is #{age} years old."
#   puts "Works as a #{job}."
#   puts "Lives in #{city}."
#   puts "Phone number is #{phone}."
# end

# person_details job: "driver", first_name: "John", last_name: "Smith", age: 50


# array = [3,5]

# def display(arr)
#   arr = [8, 4, 6]
#   puts "The array id inside function #{arr.object_id}"
# end

# puts "Array id outside the function #{array.object_id}"
# puts "Array before calling the function #{array}."
# display array

# puts "Array after calling the function #{array}."


# 3.times { puts "hello" }

# 3.times do
#   puts "hi"
# end

# def twice
#   if block_given?
#     yield 33, 44, 55
#     yield 99, 88, 77
#   elsif
#     puts "No block given!!!"
#   end
# end

# twice { |x, y, z| puts "values provided to the block #{x} #{y} #{z}" }

# twice

# def n_times(n)
#   if block_given?
#     until n.zero?
#       yield n
#       n -= 1
#     end
#   elsif
#     puts "No block given!!!"
#   end
# end

# n_times(8) { |x| puts "Block called #{x}." }


# my_greeting = proc { |x| puts "Hello #{x}." }

# my_greeting.call

# 3.times &my_greeting

# my_variable = 'something'
# my_variable_2 = 'test'

# def my_function(my_var, another_var)
#   puts my_var
#   puts another_var
# end

# my_function my_variable, my_variable_2


# 6.times do |x| puts "hello #{x}" end

# 5.times { |x| puts "hi #{x}" }

# my_block = proc { |x| puts "block test" }

# 7.times &my_block

# my_block.call
# puts "something".class
# puts 6.class
# puts my_block.class

# def test_func(x)
#   puts "the argument is x is #{x}"
# end

# test_func 8

# my_proc = proc { |x| puts "this is a proc and x is #{x}" }
# my_lambda = lambda { |x| puts "this is a lambda and x is #{x}" }

# puts my_proc.class
# puts my_lambda.class

# my_proc.call
# my_lambda.call


# my_var = 'test'

# my_proc_1 = proc { puts "my variable is: #{my_var}" }
# my_lambda_1 = lambda { puts "my variable is: #{my_var}" }

# my_proc_1.call
# my_lambda_1.call

# def create_closure
#   counter = 0
#   return proc { counter += 1 }
# end

# my_closure = create_closure

# puts my_closure.call
# puts my_closure.call
# puts my_closure.call
# puts my_closure.call
# puts my_closure.call


# def create_two_procs
#   counter = 0
#   [
#     proc { counter += 1 },
#     proc { counter -= 1 }
#   ]
# end

# increment, decrement = create_two_procs

# puts "increment call #{increment.call}"
# puts "increment call #{increment.call}"
# puts "increment call #{increment.call}"

# puts "decrement call #{decrement.call}"
# puts "decrement call #{decrement.call}"


# class Person
#   attr_accessor :last_name

#   @@population = 0
#   def initialize(f_n, l_n)
#     @first_name = f_n
#     @last_name = l_n
#     @@population += 1
#   end

#   def self.population
#     @@population
#   end

#   def greeting
#     puts "Hello #{@first_name} #{@last_name}."
#   end

#   def return_first_name
#     @first_name
#   end
# end

# person_1 = Person.new("John", "Smith")
# person_2 = Person.new("Max", "Brady")

# puts Person.population

# person_3 = Person.new("James", "Markson")
# puts Person.population

class Point2D
  def initialize(x, y)
    @x = x
    @y = y
  end

  def display_coordinates
    puts "X coordinate is #{@x}"
    puts "Y coordinate is #{@y}"
  end
end

class Point3D < Point2D
  def initialize(x, y, z)
    super(x, y)
    @z = z
  end

  def display_coordinates
    super
    puts "Z coordinate is #{@z}"
  end
end

point_2d_1 = Point2D.new(3,6)
# point_2d_1.display_coordinates

point_3d_1 = Point3D.new(5,7,3)
point_3d_1.display_coordinates