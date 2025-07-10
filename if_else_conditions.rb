
# ex1 - if elsif else
# If else conditions evaluation
x = 1
if x > 2
   puts "x is greater than 2"
elsif x <= 2 and x!=0
   puts "x is exactly equals to 1"
else
   puts "I can't guess the number"
end

# ex2 - if
$debug = 1 # if we pass debug to nil it will not print anything
puts "debug\n" if $debug # debug



# ex3 - unless statement if cond is false then behave like if and if cond is true it will execute else part
y = 1
unless y >= 2
    puts "y is less than 2"
else
    puts "y is greater than 2"
end

# ex4
$var =  1
puts "1 -- Value is set\n" if $var
puts "2 -- Value is set\n" unless $var # it will not execute due to condition is true

$var = false
puts "3 -- Value is set\n" unless $var # it will execute due to cond it false


# case statement
$age = 1
case $age
when 0 .. 2
   puts "baby"
when 3 .. 6
   puts "little child"
when 7 .. 12
   puts "child"
when 13 .. 18
   puts "youth"
else
   puts "adult"
end