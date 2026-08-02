# Will be used to extend the object with the hello method
module Greeter
  def hello
    puts "Hello from Mod::Obj"
  end
end

class Obj
  def initialize
    @name = "Default Name"
    @age = 5
  end
  
  # Object.to_s is called when an object is printed, so we can override it to provide a custom string representation of the object
  def to_s
    "Name: #{@name}, Age: #{@age}"
  end
end

obj = Obj.new
puts obj # Implicitly calls obj.to_s

# Check if object is of type
puts obj.is_a? Obj # => true # alias for obj.kind_of? Obj
puts obj.is_a? Object # => true # alias for obj.kind_of? Object
puts obj.instance_of? Obj # => true
puts obj.instance_of? Object # => false
obj.extend Greeter
obj.hello # => Hello from Greeter::Obj

obj.freeze # Freezes the object, making it immutable. ForzenError will be raised if modification is attempted
begin
  obj.instance_variable_set(:@name, "New Name") # => FrozenError: can't modify frozen Obj
rescue FrozenError => e
  puts e.message
end