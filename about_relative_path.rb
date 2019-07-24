# frozen_string_literal: true

require_relative 'about_proc'
hello = proc { |name| puts "Hello, #{name}. I’m working proc!" }
hello.call(ARGV.first)
