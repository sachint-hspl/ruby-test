class Greeter
    def initialize(name = "World")
        @name = name
    end 

    def say_hi
        puts "Hi #{@name}!"
    end

    def say_bye
        puts "Bye #{@name}, come back soon!"
    end
end

greeter = Greeter.new("Parag")

greeter.say_hi

greeter.say_bye

# Below commands are used to check the methods exist for that object
# Greeter.instance_methods
# Greeter.instance_methods(false)


# greeter.respond_to?("name") # false
# greeter.respond_to?("say_hi") # true
# greeter.respond_to?("say_bye") # true
# greeter.respond_to?("to_s") # true
# greeter.respond_to?("bye") # false
 

# Following commands we have execute on irb terminal with an attr_accessor 
# name is to get the value and name= to set the value
class Greeter
    attr_accessor :name
end 

greeter = Greeter.new("Trupti")

greeter.respond_to?("name")
greeter.respond_to?("name=")

greeter.say_hi
greeter.name = "Anushree"
greeter.name
greeter.say_hi



