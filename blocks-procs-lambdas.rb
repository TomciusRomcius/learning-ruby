# Lambdas

# { ... } has higher precedence than do...end

def callPrint(l, text)
  l.call text
end

def mapFn(arr, mutator)
  arr.map(&mutator)
end

times_two = -> (x) { x * 2}
# Or longer: times_two = lambda { |x| x * 2|}
arr = mapFn [1, 2, 3], times_two
arr.each do |x| print "#{x } " end
puts

callPrint(-> (x) { puts x }, "Hello World")

# You can also do the longer verison

# Blocks, Procs
# Functions dont accept blocks as arguments, but they can yield to them.
def func
  puts "Before"
  yield
  puts "After"
end

func do puts "Inside block" end

puts

proc = Proc.new do
  puts "Inside proc which returns (block wrapped in an object)"
end

func(&proc)

# When a block/proc returns, the function from parent context (in this case top level) will get returned
func do 
  puts "Returning" 
  return 
end


func(&proc)

# Even if blockEx accepted proc as an argument, and the proc returned, the function from parent context (in this case top level) will get returned
# proc = Proc.new do
#   puts "Returning from proc"
#   return
# end
puts "This will never be printed because the block returned"