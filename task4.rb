# frozen_string_literal: true

the_binding = class A
                @@a = 1
                @a = 2
                a = 3

                binding
              end

p eval('[@@a, @a, a]', the_binding, __FILE__, __LINE__) # Replace '*****' to your code
