line1 = "Cats are smarter than dogs";
line2 = "Dogs also like meat";

if ( line1 =~ /Cats(.*)/ )
   puts "Line1 contains Cats"
end
if ( line2 =~ /Cats(.*)/ )
   puts "Line2 contains  Dogs"
end


puts "======search and replace=============="
phone = "2004-959-559 #This is Phone Number"
phone = (phone || "").sub(/#.*$/, "").strip
puts "Phone Num (after comment removal) : #{phone}"

phone = phone.gsub(/\D/, "")
puts "Phone Num (after non-digit removal) : #{phone}"

puts "============================="

text = "rails are rails, really good Ruby on Rails"

# Replace 'rails' (case-insensitive) with 'Rails'
text.gsub!(/rails/i) { |match| "Rails" }

puts "#{text}"