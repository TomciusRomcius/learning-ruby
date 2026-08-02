# Arrays
puts "Arrays"
arr = [1, "two"]

# Array.new    #=> []
# Array.new(3)       #=> [nil, nil, nil]
# Array.new(3, true) #=> [true, true, true]
arr.push 3
puts "Array length: #{arr.length}"
puts "Array first element: #{arr.first}"
puts "Array last element: #{arr.last}"
puts "Printing array elements"
arr.each do |item|
  puts item
end


# Hashmaps

puts
puts "Hash maps"
map = {
  one: 1,
  two: "two"
}

puts map[:one]
puts map[:two]

puts 
map2 = {
  1 => "one",
  :two => 2,  
  "three" => 3
}

puts map2[1]
puts map2[:two]
puts map2["three"]

puts "Printing map keys"

map2.each do |key, value|
  puts "#{key} => #{value}"
end

# Sets

puts
puts "Sets"
set = Set.new
set.add "apple"
set << "banana" # can also add using <<

puts "Has apple: #{set.include? "apple"}" # => true
puts "Has banana: #{set.include? "banana"}" # => true
puts "Has grape: #{set.include? "grape"}" # => false

set.delete "banana" # can also remove using >> or set.delete("banana")
puts "Has banana: #{set.include? "banana"}" # => false

set.each do |item|
  puts item
end