val1 = "This is variable one"
val2 = "This is variable two"
puts val1
puts val2

puts "=========The putc Statement========"

str = "Hello Ruby!"
putc str
puts

puts "=========The gets Statement========"

puts "Enter a value :"
val = gets
puts val

puts "=========The print Statement========"

print "Hello World"
print "Good Morning"

puts

puts "=========File operations========"

# The File.new Method
aFile = File.new("input.txt", "r")
   # ... process the file
aFile.close

# The File.open Method
File.open("input.txt", "r") do |aFile|
   # ... process the file
end

# Reading and Writing Files

# The sysread Method write

puts "=========File operations write========"

aFile = File.new("input.txt", "r+")
if aFile
   aFile.syswrite("ABCDEF")
else
   puts "Unable to open file!"
end

# The sysread Method read
puts "=========File operations read========"

aFile = File.new("input.txt", "r")
if aFile
   content = aFile.sysread(20)
   puts content
else
   puts "Unable to open file!"
end

puts "=========The each_byte Method========"

aFile = File.new("input.txt", "r+")
if aFile
   aFile.syswrite("ABCDEF")
   aFile.each_byte {|ch| putc ch; putc ?. }
else
   puts "Unable to open file!"
end
puts

puts "===========The IO.readlines Method================"
arr = IO.readlines("input.txt")
puts arr[0]
puts arr[1]

puts "===========The IO.foreach Method================"
IO.foreach("input.txt"){|block| puts block}


puts "===========Renaming and Deleting Files================"
# Rename a file 
# File.rename( "input1.txt", "input2.txt" )

# Delete file
# File.delete("input2.txt")

puts "=========File Modes and Ownership==========="
file = File.new( "input1.txt", "w" )
file.chmod( 0755 )

puts "=========File Inquiries==========="
# File.open("file_io.rb") if File::exists?( "file_io.rb" )
# File.file?( "input.txt" ) 

# # a directory
# File::directory?( "/usr/local/bin" ) # => true
# # a file
# File::directory?( "file.rb" ) # => false

# File.readable?( "test.txt" )   # => true
# File.writable?( "test.txt" )   # => true
# File.executable?( "test.txt" ) # => false
# File.zero?( "test.txt" )      # => true
# File.size?( "text.txt" )     # => 1002
# File::ftype( "test.txt" )     # => file

# File::ctime( "test.txt" ) # => Fri May 09 10:06:37 -0700 2008
# File::mtime( "text.txt" ) # => Fri May 09 10:44:44 -0700 2008
# File::atime( "text.txt" ) # => Fri May 09 10:45:01 -0700 2008

# # Directories in Ruby

# puts "===================Directories in Ruby====================="
# puts Dir.entries("/usr/bin").join(' ')
# Dir.foreach("/usr/bin") do |entry|
#    puts entry
# end

# Dir["/usr/bin/*"]

# puts "=========Creating a Directory============="
# Dir.mkdir("mynewdir")
# Dir.mkdir( "mynewdir", 755 )

# puts "=========Deleting a Directory============="
# Dir.delete("testdir")

# puts "==========Creating Files & Temporary Directories======"

# require 'tmpdir'
#    tempfilename = File.join(Dir.tmpdir, "tingtong")
#    tempfile = File.new(tempfilename, "w")
#    tempfile.puts "This is a temporary file"
#    tempfile.close
#    File.delete(tempfilename)

# require 'tempfile'
#    f = Tempfile.new('tingtong')
#    f.puts "Hello"
#    puts f.path
#    f.close


