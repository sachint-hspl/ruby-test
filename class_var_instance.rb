class Customer
   @@no_of_customers = 0
   def initialize(id, name, addr)
      @cust_id = id
      @cust_name = name
      @cust_addr = addr
   end
   def display_details()
      puts "Customer id #@cust_id"
      puts "Customer name #@cust_name"
      puts "Customer address #@cust_addr"
   end
   def total_no_of_customers()
      @@no_of_customers += 1
      puts "Total number of customers: #@@no_of_customers"
   end
end

# Create Objects
cust1 = Customer.new(1, "Sachin", "Pune")
cust2 = Customer.new(2, "Mayur", "Mumbai")

# Call Methods
cust1.display_details()
puts
puts "-------------------------------------------------------"
puts
cust2.display_details()

puts '----------------------------------------------'
# cout
cust1.total_no_of_customers()
cust2.total_no_of_customers()



# Constants
class Example
   VAR1 = 100
   VAR2 = 200
   def show
      puts "Value of first Constant is #{VAR1}"
      puts "Value of second Constant is #{VAR2}"
   end
end

# Create Objects
object = Example.new()
object.show


# String literals
puts 'escape using "\\"';
puts 'That\'s right';

puts "Multiplication Value : #{24*60*60}";


# Arrays
ary = [  "fred", 10, 3.14, "This is a string", "last element", ]
ary.each do |i|
   puts i
end

# Hashes
hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
   print key, " is ", value, "\n"
end

# Ranges
(10..15).each do |n| 
   print n, ' ' 
end