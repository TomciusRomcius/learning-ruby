ATTRIBUTES = [:name, :age]

class Table
  # Statement runs once class is defined (not object)
  private # Change accesibility for subsequent methods to private
  ATTRIBUTES.each do |attr|
    define_method(attr) do
      instance_variable_get("@#{attr}")
    end
    define_method("#{attr}=") do |value|
      instance_variable_set("@#{attr}", value)
    end
  end
  public # Change accesibility for subsequent methods to public
end

table = Table.new
[*ATTRIBUTES, :new_method].each do |attr|
  puts "Table has method #{attr}: #{table.respond_to? attr, include_private = true}"
end
table.define_singleton_method(:new_method) do
  puts "New method"
end
[*ATTRIBUTES, :new_method].each do |attr|
  puts "Table has method #{attr}: #{table.respond_to? attr, include_private = true}"
end
table.new_method

# Set using send or public_send (accepts only public methods, otherwise NoMethodError is raised)
table.send :name=, "John"
puts table.send(:name) # => John