# frozen_string_literal: true

hello = proc { |name| puts "Hello, #{name}. I’m working proc!" }
hello.call(ARGV.first)
