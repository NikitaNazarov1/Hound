# frozen_string_literal: true

x = class A
      def initialize
        @a = 11
        @@a = 22
        a = 33
        b = 43

        binding
      end
      @a = 1
      @@a = 2
      a = 3
      b = 4

      binding
    end
puts A.instance_variable_get(:@a)
puts A.class_variable_get(:@@a)
puts eval('a', x, __FILE__, __LINE__)
puts A.new.instance_variable_get(:@a)
puts A.class_variable_get(:@@a)
b = A.new.method(:initialize).call
puts eval('a', b, __FILE__, __LINE__)
