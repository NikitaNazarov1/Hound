# frozen_string_literal: true

class HistogramGenerator
  def initialize; end

  def self.process_string(string:)
    _result = if string.empty?
                {}
              else
                string.split(/\W+/).each_with_object(Hash.new(0)) do |word, result|
                  result[word] += 1
                end
              end
  end

  def self.sort_histogram(histogram)
    histogram.sort_by { |_word, occurencies| occurencies }.to_h
  end
end

module App
  TEXT = 'When Mr. and Mrs. Dursley woke up on the dull, gray Tuesday our story
    starts, there was nothing about the cloudy sky outside to suggest that
    strange and mysterious things would soon be happening all over the
    country. Mr. Dursley hummed as he picked out his most boring tie for
    work, and Mrs. Dursley gossiped away happily as she wrestled a screaming
    Dudley into his high chair.'

  module_function

  def perform
    text = ''
    puts('reading file')
    puts("extracted string: #{text}")
    histogram = HistogramGenerator.process_string(string: TEXT)
    puts("generated histogram: #{histogram}")
    puts("sorted histogram: #{HistogramGenerator.sort_histogram(histogram)}")
  end

  def number_to_word(number)
    case number
    when 1 then 'one'
    when 2 then 'two'
    when 3 then 'three'
    when 4 then 'four'
    when 5 then 'five'
    when 6 then 'six'
    when 7 then 'seven'
    when 8 then 'eight'
    when 9 then 'nine'
    else
      'oops'
    end
  end
end

puts App.perform
[1, 2, 3, 4, 5, 6, 7, 8, 9, 13_666].each do |number|
  puts App.number_to_word(number)
end
