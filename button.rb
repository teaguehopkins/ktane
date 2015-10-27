#!/usr/bin/ruby
require 'pry'

puts "Enter button color."
color = gets.chomp.downcase

puts "Enter button text."
text = gets.chomp.downcase

if (color == "blue")&&(text == "abort")
  puts "Hold Button"
  puts "Strip Color"
  puts "Yellow = 5"
  puts "Blue = 4"
  puts "All Others = 1"
  abort()
end

puts "How many batteries?"
batteries = gets.chomp.to_i

if (batteries > 1)&&(text == "detonate")
    puts "Press and Release"

    abort()
end

puts "CAR indicator lit? y/n"
if gets.chomp == "y"
  car = true
else
  car = false
end

if (color == "white")&&(car)
    puts "Hold Button"
    puts "Strip Color"
    puts "Yellow = 5"
    puts "Blue = 4"
    puts "All Others = 1"
    abort()
end

puts "FRK indicator lit? y/n"
if gets.chomp == "y"
  frk = true
else
  frk = false
end

if (batteries > 2)&&(frk)
    puts "Press and Release"
    abort()
  elsif (color == "yellow")
    puts "Hold Button"
    puts "Strip Color"
    puts "Yellow = 5"
    puts "Blue = 4"
    puts "All Others = 1"
    abort()
  elsif (color == "red")&&(text == "hold")
    puts "Press and Release"
    abort()
  else
    puts "Hold Button"
    puts "Strip Color"
    puts "Yellow = 5"
    puts "Blue = 4"
    puts "All Others = 1"
    abort()
end
