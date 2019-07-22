# frozen_string_literal: true

class A
  def variables
    @@a = 1
    @a = 2
    a = 3

    binding
  end
end
binding = A.new.variables
p eval('[@@a, @a, a]', binding, __FILE__, __LINE__) # Replace '*****' to your code
