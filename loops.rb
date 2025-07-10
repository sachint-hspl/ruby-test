
# with while statement
# with local variables
puts "=================with local variables================"
i = 0
num = 5
while i < num do
   puts("Inside the loop i = #{i}")
   i += 1
end

# with global variables
puts "=================with global variables================"
$i = 0
$num = 5
while $i < $num do
   puts("Inside the loop i = #{$i}")
   $i += 1
end

# while modifier follows a begin statement
puts "=================with while modifier================"
i = 0
num = 5
begin
   puts("Inside the loop i = #{i}" )
   i += 1
end while i < num

# until Statement
puts "=================with until statement================"
i = 0
num = 5
until i > num do
    puts("Inside the loop i = #{i}" ) 
    i += 1
end

# until modifier
puts "=================with until modifier================"
i = 0
num = 5
begin
    puts("Inside the loop i = #{i}" ) 
    i += 1
end until i > num

# for statement
puts "=================with for statement================"
for i in 0..5
   puts "Value of local variable is #{i}"
end

# for each statement
puts "=================with for each statement================"
(0..5).each do |i|
    puts "Value of local variable is #{i}"
end


# break statement
puts "=================with break statement================"
for i in 0..5
  if i > 2 then
      break
  end
  puts "Value of local variable is #{i}"
end

# next statement
puts "=================with next statement================"
for i in 0..5
  if i < 2 then
      next
  end
  puts "Value of local variable is #{i}"
end

# redo statement - it will go into infinite loop
=begin
    for i in 0..5
    if i < 2 then
        puts "Value of local variable is #{i}"
        redo
    end
    end
=end

# facing issue with retry and rescue in for loop statements