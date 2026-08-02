class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def mutate_age(new_age)
    @age = new_age
  end

  # Add accessors
  # attr_reader for getters, attr_writer for setters, and attr_accessor for both
  attr_accessor :name, :age
end

person = Person.new "John", 30
puts "#{person.name} is #{person.age} years old."
person.mutate_age 31
puts "#{person.name} is now #{person.age} years old."
person.age = 32
puts "#{person.name} is now #{person.age} years old."

puts

class User
  def self.find_by_name(name)
    # Simulate a database query
    puts "Finding user by name: #{name}"
  end
end

User.find_by_name("Alice") # => Finding user by name: Alice

# More commonly written as.
class Order
  class << self
    def find_by_id(id)
      # Simulate a database query
      puts "Finding order by ID: #{id}"
    end
      def find_by_name(name)
      # Simulate a database query
      puts "Finding order by name: #{name}"
    end
  end
end

Order.find_by_id(123) # => Finding
Order.find_by_name("John") # => Finding order by name: John

orderClass = Order # even though Order is a class, it is also an object of class Class