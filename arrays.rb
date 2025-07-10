names = Array.new # []

names = Array.new(20) # [nil....nil] 20 elements as nil

names = Array.new(4, "mac") 
puts "#{names}" # ['mac'...'mac'] 4 elements as mac

# Range with some expression
puts "===========Range with some expression=============="
nums = Array.new(10) { |e| e = e * 2 }
puts "#{nums}"

nums1 = Array.[](1, 2, 3, 4,5)
puts "num1 #{nums1}"
nums2 = Array[1, 2, 3, 4,5]
puts "num2 #{nums2}"


puts "===================Array 0-9============"
digits = Array(0..9)
puts "#{digits}"

# Array Built-in Methods
puts "===================Array Built-in Methods============"

digits = Array(0..9)
num = digits.at(6)
puts "#{num}"

# Array pack Directives
puts "===================Array pack Directives============"
a = [ "a", "b", "c" ]
n = [ 65, 66, 67 ]
puts a.pack("A3A3A3")
puts a.pack("a3a3a3")
puts n.pack("ccc")  