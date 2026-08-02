module One
  class Placeholder
  end
  $symbol_one = :my_symbol
end

module Two
  class Placeholder
  end
  $symbol_two = :my_symbol
end

# Symbols are unique, immutable and share the same object_id
# 
puts $symbol_one.object_id == $symbol_two.object_id # => true

# Symbols can be retrieved by using ::all_symbols
puts Symbol.all_symbols.include?($symbol_one) # => true