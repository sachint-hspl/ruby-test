puts "====================Begin and end statements with block======================"
BEGIN {
   puts "BEGIN code block"
} 

END {
   puts "END code block"
}
puts "MAIN code block"


# simple block of the statement yield call
puts "====================block_stat statements======================"
def block_stat
   puts "You are in the method"
   yield
   puts "You are again back to the method"
   yield
end
block_stat {puts "You are in the block"}

puts "====================block_stat_with_params statements======================"
def block_stat_with_params
   yield 5
   puts "You are in the method block_stat_with_params"
   yield 100, 200
end
block_stat_with_params {|i, j = 0| puts "You are in the block #{i}, #{j}"}

puts "====================Blocks and Methods statements simple way======================"

# simple way to call the block
def simple_way
   yield
end
simple_way{ puts "Hello world"}

puts "====================Blocks and Methods statements with block======================"
def with_block(&block)
   block.call
end

with_block { puts "Hello World!"}
