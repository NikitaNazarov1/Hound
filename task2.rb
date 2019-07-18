# frozen_string_literal: true

class I
  def like(arg)
    puts format('%s %s %s', self.class, self.class.instance_methods(false), arg)
  end
end

c, m, arg = gets.split # input 'I like metaprogramming.'

# write your code here to display 'I like metaprogramming.'
$modify_stdout = $stdout
class StdOut
  def puts(string)
    ['[', ']', ':'].each do |bad|
      string.gsub!(bad, '')
    end
    $modify_stdout.puts string.to_s
  end

  def write; end
end
$stdout = StdOut.new

Object.const_get(c).new.send(m, arg)
