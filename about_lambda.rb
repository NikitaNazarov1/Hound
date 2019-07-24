# frozen_string_literal: true

hello = ->(x, y) { puts "Hello, #{x} and #{y}. You’re married! You can kiss in 3.. 2.. 1.. Now!" }
hello.call(ARGV.first, ARGV.last)
