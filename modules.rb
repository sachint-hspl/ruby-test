$LOAD_PATH << '.'

require 'modules/trig.rb'
require 'modules/moral'
require "modules/support"

y = Trig.sin(Trig::PI/4)
wrongdoing = Moral.sin(Moral::VERY_BAD)

puts "---------------------- Week Module with include statements ----------------------------"
class Decade
include Week
   no_of_yrs = 10
   def no_of_months
      puts Week::FIRST_DAY
      number = 10*12
      puts number
   end
end
d1 = Decade.new
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
d1.no_of_months


puts "================= Mixins in ruby ================================"
module A
   def a1
    puts "a1 code"
   end
   def a2
    puts "a2 code"
   end
end
module B
   def b1
    puts "b1 code"
   end
   def b2
    puts "b2 code"
   end
end

class Sample
include A
include B
   def s1
    puts "s1 code"
   end
end

samp = Sample.new
samp.a1
samp.a2
samp.b1
samp.b2
samp.s1