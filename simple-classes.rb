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


