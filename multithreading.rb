def func1
   i = 0
   while i<=2
      puts "func1 at: #{Time.now}"
      sleep(2)
      i = i+1
   end
end

def func2
   j = 0
   while j<=2
      puts "func2 at: #{Time.now}"
      sleep(1)
      j = j+1
   end
end

puts "Started At #{Time.now}"
t1 = Thread.new{func1()}
t2 = Thread.new{func2()}
t1.join
t2.join
puts "End at #{Time.now}"


count = 0
arr = []

10.times do |i|
   arr[i] = Thread.new {
      sleep(rand(0)/10.0)
      Thread.current["mycount"] = count
      count += 1
   }
end

arr.each {|t| t.join; print t["mycount"], ", " }
puts "count = #{count}"


require 'thread'

count1 = count2 = 0
difference = 0
counter = Thread.new do
   loop do
      count1 += 1
      count2 += 1
   end
end
spy = Thread.new do
   loop do
      difference += (count1 - count2).abs
   end
end
sleep 1
puts "count1 :  #{count1}"
puts "count2 :  #{count2}"
puts "difference : #{difference}"

mutex = Mutex.new

count1 = count2 = 0
difference = 0
counter = Thread.new do
   loop do
      mutex.synchronize do
         count1 += 1
         count2 += 1
      end
   end
end
spy = Thread.new do
   loop do
      mutex.synchronize do
         difference += (count1 - count2).abs
      end
   end
end
sleep 1
mutex.lock
puts "count1 :  #{count1}"
puts "count2 :  #{count2}"
puts "difference : #{difference}"


# cv = ConditionVariable.new
# a = Thread.new {
#    mutex.synchronize {
#       puts "A: I have critical section, but will wait for cv"
#       cv.wait(mutex)
#       puts "A: I have critical section again! I rule!"
#    }
# }

# puts "(Later, back at the ranch...)"

# b = Thread.new {
#    mutex.synchronize {
#       puts "B: Now I am critical, but am done with cv"
#       cv.signal
#       puts "B: I am still critical, finishing up"
#    }
# }
# a.join
# b.join


thr = Thread.new do   # Calling a class method new
    puts "In second thread"
    raise "Raise exception"
end
thr.join   # Calling an instance method join
Thread.abort_on_exception = true