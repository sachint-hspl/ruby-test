# below are the 

# a = 10
# b = 20
# c = 30

# a, b = b, c # Swapping variables

a, b, c = 10, 20, 30
puts "#{a}, #{b}, #{c}"


# dot and double colon operator

MR_COUNT = 0        
module Foo
   MR_COUNT = 0
   ::MR_COUNT = 1   
   MR_COUNT = 2     
end
puts MR_COUNT       
puts Foo::MR_COUNT

CONST = ' out there'
class Inside_one
   CONST = proc {' in there'}
   def where_is_my_CONST
      ::CONST + ' inside one'
   end
end
class Inside_two
   CONST = ' inside two'
   def where_is_my_CONST
      CONST
   end
end
puts Inside_one.new.where_is_my_CONST
puts Inside_two.new.where_is_my_CONST
puts Object::CONST + Inside_two::CONST
puts Inside_two::CONST + CONST
puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_two::CONST