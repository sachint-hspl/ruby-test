puts "========== The accessor & setter Methods with class defination and method initialization ============"

# with attribute accessor
class Box
   # constructor method
   def initialize(w,h)
      @width = w
      @height = h
   end

   # accessor methods using attr_reader for conciseness
   attr_reader :width, :height
end

# create an object
box = Box.new(10, 20)

# use accessor methods (no need for parentheses when calling without arguments)
x = box.width
y = box.height

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"

puts "=============without attribute accessor==============="
# without attribute accessor
class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end

   # accessor methods
   def printWidth
      @width
   end

   def printHeight
      @height
   end
end

# create an object
box = Box.new(10, 20)

# use accessor methods
x = box.printWidth()
y = box.printHeight()

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"

puts "====================attribute accessor with different type value======================="

class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end

   # accessor methods
   def getWidth
      @width
   end
   def getHeight
      @height
   end

   # setter methods
   def setWidth=(value)
      @width = value
   end
   def setHeight=(value)
      @height = value
   end
end

# create an object
box = Box.new(10, 20)

# use setter methods
box.setWidth = 30
box.setHeight = 50

# use accessor methods
x = box.getWidth()
y = box.getHeight()

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"

puts "===========The instance Methods====================="

class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end
   # instance method
   def getArea
      @width * @height
   end
end

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.getArea()
puts "Area of the box is : #{a}"


puts "================The class Methods and Variables=================="
class Box
   # Initialize our class variables
   @@count = 0
   def initialize(w,h)
      # assign instance avriables
      @width, @height = w, h

      @@count += 1
   end

   def self.printCount()
      puts "Box count is : #{@@count}"
   end
end

# create two object
box1 = Box.new(10, 20)
box2 = Box.new(30, 100)

# call class method to print box count
Box.printCount()


puts "=================The to_s Method============="

class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end
   # define to_s method
   def to_s
      "(w:#@width,h:#@height)"  # string formatting of the object.
   end
end

# create an object
box = Box.new(10, 20)

# to_s method will be called in reference of string automatically.
puts "String representation of box is : #{box}"


puts "===============Access Control (Public, Private, Protected)============="

class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end

   # instance method by default it is public
   def getArea
      getWidth() * getHeight
   end

   # define private accessor methods
   def getWidth
      @width
   end
   def getHeight
      @height
   end
   # make them private
   private :getWidth, :getHeight

   # instance method to print area
   def printArea
      @area = getWidth() * getHeight
      puts "Big box area is : #@area"
   end
   # make it protected
   # protected :printArea  #  protected method `printArea' called for
end

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.getArea()
puts "Area of the box is : #{a}"

# try to call protected or methods
box.printArea()

puts "===============Class Inheritance============="
class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end
   # instance method
   def getArea
      @width * @height
   end
end

# define a subclass
class BigBox < Box

   # add a new instance method
   def printArea
      @area = @width * @height
      puts "Big box area is : #@area"
   end
end

# create an object
box = BigBox.new(10, 20)

# print the area
box.printArea()

puts "===============Methods Overriding============="
class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end
   # instance method
   def getArea
      @width * @height
   end
end

# define a subclass
class BigBox < Box

   # change existing getArea method as follows
   def getArea
      @area = @width * @height
      puts "Big box area is - : #@area"
   end
end

# create an object
box = BigBox.new(10, 20)

# print the area using overriden method.
box.getArea()


puts "===============Operator Overloading============="
class Box
   def initialize(w,h)     # Initialize the width and height
      @width,@height = w, h
   end

   def +(other)       # Define + to do vector addition
      Box.new(@width + other.width, @height + other.height)
   end

   def -@           # Define unary minus to negate width and height
      Box.new(-@width, -@height)
   end

   def *(scalar)           # To perform scalar multiplication
      Box.new(@width*scalar, @height*scalar)
   end
end

puts "===============Freezing Objects============="
# define a class
class Box
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end

   # accessor methods
   def getWidth
      @width
   end
   def getHeight
      @height
   end

   # setter methods
   def setWidth=(value)
      @width = value
   end
   def setHeight=(value)
      @height = value
   end
end

# create an object
box = Box.new(10, 20)

# let us freez this object
# box.freeze # this line will freeze the object after that we cant modify it so just commented it so below code is executes
if( box.frozen? )
   puts "Box object is frozen object"
else
   puts "Box object is normal object"
end

# now try using setter methods
box.setWidth = 30
box.setHeight = 50

# use accessor methods
x = box.getWidth()
y = box.getHeight()

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"

puts "===============Class Constants============="
class Box
   BOX_COMPANY = "TATA Inc"
   BOXWEIGHT = 10
   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end
   # instance method
   def getArea
      @width * @height
   end
end

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.getArea()
puts "Area of the box is : #{a}"
puts Box::BOX_COMPANY
puts "Box weight is: #{Box::BOXWEIGHT}"

puts "===============Create Object Using Allocate============="

# define a class
class Box
   attr_accessor :width, :height

   # constructor method
   def initialize(w,h)
      @width, @height = w, h
   end

   # instance method
   def getArea
      @width * @height
   end
end

# create an object using new
box1 = Box.new(10, 20)

# create another object using allocate
box2 = Box.allocate

# call instance method using box1
a = box1.getArea()
puts "Area of the box is : #{a}"

# call instance method using box2
# a = box2.getArea() # will return an error method is undefined
puts "Area of the box is : #{a}"


puts "===============Create Object Using Allocate============="
class Box
   # print class information
   puts "Type of self = #{self}"
   puts "Name of self = #{self.class}"
end 