# frozen_string_literal: true

x = class A
      def initialize
        @a = 11
        @@a = 22
        a = 33
      end
      @a = 1
      @@a = 2
      a = 3
    end
puts A.instance_variable_get(:@a)
puts A.class_variable_get(:@@a)
puts x
puts A.new.instance_variable_get(:@a)
puts A.class_variable_get(:@@a)
puts A.new.method(:initialize).call
