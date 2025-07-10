# Getting Components of a Date & Time
puts "=========Getting Current Date and Time==========="
puts
time1 = Time.new
puts "Current Time : " + time1.inspect

time2 = Time.now # Time.now is a synonym
puts "Current Time : " + time2.inspect

# Getting Components of a Date & Time
puts "=========Getting Components of a Date & Time==========="
# Components of a Time
time = Time.new
puts "Current Time : " + time.inspect
puts time.year    # => Year of the date 
puts time.month   # => Month of the date (1 to 12)
puts time.day     # => Day of the date (1 to 31 )
puts time.wday    # => 0: Day of week: 0 is Sunday
puts time.yday    # => 365: Day of year
puts time.hour    # => 23: 24-hour clock
puts time.min     # => 59
puts time.sec     # => 59
puts time.usec    # => 999999: microseconds
puts time.zone    # => "UTC": timezone name


# Time.utc, Time.gm and Time.local Functions
puts "=========Time.utc, Time.gm and Time.local Functions==========="
# July 8, 2008
p Time.local(2008, 7, 8)  
# July 8, 2008, 09:10am, local time
p Time.local(2008, 7, 8, 9, 10)   
# July 8, 2008, 09:10 UTC
p Time.utc(2008, 7, 8, 9, 10)  
# July 8, 2008, 09:10:11 GMT (same as UTC)
p Time.gm(2008, 7, 8, 9, 10, 11) 


# [sec,min,hour,day,month,year,wday,yday,isdst,zone]
puts "=====[sec,min,hour,day,month,year,wday,yday,isdst,zone]====="
values = time.to_a
p values
puts Time.utc(*values)

puts "==========================="
# Returns number of seconds since epoch
p time = Time.now.to_i  
# Convert number of seconds into Time object.
p Time.at(time)

# Returns second since epoch which includes microseconds
p time = Time.now.to_f

puts "=============Timezones and Daylight Savings Time================="

# Here is the interpretation
time = Time.new
p time.zone       # => "UTC": return the timezone
p time.utc_offset # => 0: UTC is 0 seconds offset from UTC
p time.zone       # => "PST" (or whatever your timezone is)
p time.isdst      # => false: If UTC does not have DST.
p time.utc?       # => true: if t is in UTC time zone
p time.localtime  # Convert to local timezone.
p time.gmtime     # Convert back to UTC.
p time.getlocal   # Return a new Time object in local zone
p time.getutc     # Return a new Time object in UTC


puts "===============Formatting Times and Dates==============="
time = Time.new
puts time.to_s
puts time.ctime
puts time.localtime
puts time.strftime("%Y-%m-%d %H:%M:%S")

puts "=========================Time Arithmetic================="
now = Time.now          # Current time
puts now
past = now - 10         # 10 seconds ago. Time - number => Time
puts past
future = now + 10  # 10 seconds from now Time + number => Time
puts future
diff = future - past     # => 10  Time - Time => number of seconds
puts diff

puts Time.now.strftime("%a") # abbrevation Thu