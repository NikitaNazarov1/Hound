# frozen_string_literal: true

@output = []
x = class A
      def initialize
        @a = 11
        @@a = 22
        a = 33
        b = 43
        a
      end
      @a = 1
      @@a = 2
      a = 3
      b = 4
      a
    end
@output << A.instance_variable_get(:@a)
@output << A.class_variable_get(:@@a)
@output << x
@output << A.new.instance_variable_get(:@a)
@output << A.class_variable_get(:@@a)
@output << A.new.method(:initialize).call
puts @output.sort!
