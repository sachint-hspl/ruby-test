puts "==================Ruby each Iterator==================="

ary = [1,2,3,4,5]
ary.each do |i|
   puts i
end


puts "==================Ruby collect Iterator==================="
a = [1,2,3,4,5]
b = Array.new
b = a.collect { |x| x }
puts b

puts "=======each values multiple by 10======="
b = a.collect{|x| 10*x}
puts b