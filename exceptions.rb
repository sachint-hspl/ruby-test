begin
   file = open("/unexistant_file")
   if file
      puts "File opened successfully"
   end
rescue
      file = STDIN
end
print file, "==", STDIN, "\n"

puts "=========Using raise Statement=============="

begin  
   puts 'I am before the raise.'  
   raise 'An error has occurred.'  
   puts 'I am after the raise.'  
rescue  
   puts 'I am rescued.'  
end  
puts 'I am after the begin block.' 

puts "=========Using retry Statement=============="
# begin
#    file = open("/unexistant_file.txt")
#    if file
#       puts "File opened successfully"
#    end
# rescue
#    fname = "/input.txt"
#    retry
# end


begin  
   raise 'A test exception.'  
rescue Exception => e  
   puts e.message  
   puts e.backtrace.inspect  
end  

puts '======================='

begin
   raise 'A test exception.'
rescue Exception => e
   puts e.message
   puts e.backtrace.inspect
ensure
   puts "Ensuring execution"
end

puts "==========Using else Statement=================="

begin
   # raise 'A test exception.'
   puts "I'm not raising exception"
rescue Exception => e
   puts e.message
   puts e.backtrace.inspect
else
   puts "Congratulations-- no errors!"
ensure
   puts "Ensuring execution"
end


puts "=========Catch and Throw==========="
def promptAndGet(prompt)
   print prompt
   res = readline.chomp
   throw :quitRequested if res == "!"
   return res
end

catch :quitRequested do
   name = promptAndGet("Name: ")
   age = promptAndGet("Age: ")
   sex = promptAndGet("Sex: ")
   # ..
   # process information
end
promptAndGet("Name:")

# Class Exception
# Interrupt
# NoMemoryError
# SignalException
# ScriptError
# StandardError
# SystemExit

# class FileSaveError < StandardError; end

# File.open(input, "w") do |file|
#   begin
#     # Write out the data ...
#   rescue => e
#     # Something went wrong!
#     raise FileSaveError.new(e.message)
#   end
# end