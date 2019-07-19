# frozen_string_literal: true

MaskedString = Class.new(String)

MaskedString.class_eval do
  define_method(:tr_vowel) do
    tr 'aeiou', '*'
  end

  define_singleton_method(:tr_vowel) do |str|
    str.tr 'aeiou', '*'
  end
end

s = MaskedString.new('hello')
puts s.tr_vowel

puts MaskedString.tr_vowel('goodbye')
