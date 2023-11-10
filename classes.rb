class Animal
  @@population = 0
  def initialize
    @@population += 1
  end

  def self.count
    @@population
  end
  def count
    @@population
  end
end

animal1 = Animal.new
animal2 = Animal.new
animal3 = Animal.new

puts "Number of animals #{Animal.count}"