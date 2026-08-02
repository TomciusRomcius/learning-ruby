module Printable
  def print
    puts "Hello"
  end
end

class User
  include Printable
end

user = User.new
user.print # => Hello

class IncludeExampleWithDupMethod
  include Printable # Chain for searching methods is: IncludeExampleWithDupMethod -> Printable -> Object
  def print
    puts "Hello from IncludeExampleWithDupMethod"
  end
end

class PrependExampleWithDupMethod
  prepend Printable # Chain for searching methods is: Printable -> PrependExampleWithDupMethod -> Object
  def print
    puts "Hello from PrependExampleWithDupMethod"
  end
end

include_example = IncludeExampleWithDupMethod.new
include_example.print # => Hello from IncludeExampleWithDupMethod

prepend_example = PrependExampleWithDupMethod.new
prepend_example.print # => Hello from Printable