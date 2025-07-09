
# Simple function defination with parameters
def hi(name)
    puts "Hello #{name}!"
end
 
puts hi("Parag")
# or
print hi("Sachin")


# function with capitalize method

def hi(name = "World")
    puts "Hello #{name.capitalize}!"
end
 
puts hi("parag")
# or
print hi("sachin")