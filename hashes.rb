# Hashes

months = Hash.new
puts months
puts

months = Hash.new( "month" )
puts months
puts

# or
months = Hash.new "month"
puts months
puts

months = Hash.new( "month" )
puts "#{months[0]}"
puts "#{months[72]}"
puts 

H = Hash["a" => 100, "b" => 200]
puts "#{H['a']}"
puts "#{H['b']}"
puts 

months = Hash.new( "month" )
months = {"1" => "January", "2" => "February"}
keys = months.keys
values = months.values
puts "#{keys}, #{values}"
puts months.length
puts months.invert
puts months.rehash
