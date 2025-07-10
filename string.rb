puts 'This is a simple Ruby string literal'

puts 'Won\'t you read O\'Reilly\'s book?' # with escape string literal


# Expression Substitution
puts "============================ Expression Substitution ======================"

x, y, z = 12, 36, 72
puts "The value of x is #{ x }."
puts "The sum of x and y is #{ x + y }."
puts "The average was #{ (x + y + z)/3 }."


# General Delimited Strings
# Escape Characters
# Character Encoding
puts "============================ Character Encoding ======================"
puts $KCODE = 'u'

# String Built-in Methods
puts "============================= String Built-in Methods ================="
myStr = String.new("THIS IS TEST")
puts myStr
foo = myStr.downcase

puts "#{foo}"

# String unpack Directives

puts "============================= String unpack Directives ================="


#=> ["abc", "abc "]
puts "abc \0\0abc \0\0".unpack('A6Z6')   

#=> ["abc", " \000\000"]
puts "abc \0\0".unpack('a3a3')           

#=> ["abc ", "abc "]
puts "abc \0abc \0".unpack('Z*Z*')       

#=> ["10000110", "01100001"]
puts "aa".unpack('b8B8')                 

#=> ["16", "61", 97]
puts "aaa".unpack('h2H2c')               

#=> [-2, 65534]
puts "\xfe\xff\xfe\xff".unpack('sS')     

#=> ["now is"]
puts "now = 20is".unpack('M*')   

#=> ["h", "e", "l", "l", "o"]
puts "whole".unpack('xax2aX2aX1aX2a')    