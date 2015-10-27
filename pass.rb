#!/usr/bin/ruby
require 'pry'

possible_words = ['about','after','again','below','could','every','first','found','great','house','large','learn','never','other','place','plant','point','right','small','sound','spell','still','study','their','there','these','thing','think','three','water','where','which','world','would','write']
still_possible_words = []
index = 0

while possible_words.length > 1
  puts 'Enter next position letters.'
  letters = gets.chomp

  while letters.length < 6
    puts 'Missing Letters. Try Again.'
    letters = gets.chomp
  end

  possible_words.each do |word|
    if (letters.count word[index]) == 1
      still_possible_words.push(word)
    end
  end
  possible_words = still_possible_words
  still_possible_words = []
  index = index + 1

  puts 'Words Possible' + possible_words.to_s
end
