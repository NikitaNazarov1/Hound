# frozen_string_literal: true

animal = 'dog'

# define singleton speak() method
def animal.speak
  puts 'Dog says Woof!'
end

animal.speak #=> 'Dog says Woof!'
