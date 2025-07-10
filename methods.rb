
def lang(a1 = "Node", a2 = "React")
   puts "The programming language is #{a1}"
   puts "The programming language is #{a2}"
end

lang "C", "C++" 
lang # Make sure while calling this type function default params should be there else it will throw an error


# with return statement
puts "===============with return statement============="
def return_stat
   i = 100
   j = 10
   k = 0
   return i, j, k
end
puts return_stat

# var number of params
puts "===============with var number of params============="
def var_num_params (*params)
   puts "The number of parameters is #{params.length}"
   for i in 0...params.length
      puts "The parameters are #{params[i]}"
   end
end
var_num_params "Zara", "6", "F"
var_num_params "Mac", "36", "M", "MCA"


# class methods
puts "===============with class methods============="
class Accounts
   def reading_charge
       puts "normal by method"
   end
   def Accounts.return_date
       puts "class name followed by method"
   end
end

Accounts.return_date


puts "===============with methods undef and alias============="

def ror
    puts "prints ROR"
end
ror

# undef statement
undef ror

# Alias statement
# alias :ruby, :ror