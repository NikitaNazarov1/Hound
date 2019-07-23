# frozen_string_literal: true

class Animal
end

animal = Animal.new

# def animal.speak() method
def animal.speak
  puts 'Dog says Woof!'
end

animal.speak #=> 'Dog says Woof!'
#-------------------------------------------
# Singleton class
class << animal
  def speak
    puts 'Dog says Woof!'
  end
end

animal.speak #=> 'Dog says Woof!'
#-------------------------------------------
# instance_eval

animal.instance_eval do
  def speak
    puts 'Dog says Woof!'
  end
end

animal.speak #=> 'Dog says Woof!'
#-------------------------------------------
# define_method
define_method(:speak) do
  puts 'Dog says Woof!'
end

animal.speak #=> 'Dog says Woof!'
#-------------------------------------------
# module, include
module M
  def speak
    puts 'Dog says Woof!'
  end
end

class Animl
  include M
end

animl = Animl.new
animl.speak #=> 'Dog says Woof!'
#-------------------------------------------
# module, extend
module B
  def speak1
    puts 'Dog says Woof!(1)'
  end
end

module N
  def speak2
    puts 'Dog says Woof!(2)'
  end
end

class Anim
  extend B
end
Anim.extend N

puts Anim.speak1 #=> 'Dog says Woof!(1)'
puts Anim.speak2 #=> 'Dog says Woof!(2)'
#--------------------------------------------
# send, lambda
mylambda = -> { puts 'Dog says Woof!' }
define_method :speak, &mylambda
send(:speak) #=> 'Dog says Woof!'
