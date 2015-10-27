#!/usr/bin/ruby
require 'pry'

puts "Enter LEDs as 010010, using 1 for on."
leds = gets.chomp

puts "Enter wire colors as rbbxwb, using x for both and w for neither."
colors = gets.chomp
colors

puts "Enter Stars as 010010, using 1 for star present."
stars = gets.chomp

if (leds.length != colors.length)||(stars.length != colors.length)
  abort("Error: Length Mismatch")
end

wires = []

index = 0
while index < leds.length
  wires.push([leds[index].to_i, colors[index], stars[index].to_i])
  index = index + 1
end

wire_configs = {
[0, "r", 0] => "s",
[0, "r", 1] => "c",
[0, "b", 0] => "s",
[0, "b", 1] => "d",
[0, "x", 0] => "s",
[0, "x", 1] => "p",
[0, "w", 0] => "c",
[0, "w", 1] => "c",
[1, "r", 0] => "b",
[1, "r", 1] => "b",
[1, "b", 0] => "p",
[1, "b", 1] => "p",
[1, "x", 0] => "s",
[1, "x", 1] => "d",
[1, "w", 0] => "d",
[1, "w", 1] => "b"
}

orders = []

wires.each do |wire|
  orders.push(wire_configs[wire])
end

if (orders.count "s") != 0
  puts "Serial # Last Digit?"
  sn_last = gets.chomp.to_i
  sn_last_even = sn_last.even?
end

if (orders.count "p") != 0
  puts "Parallel Port? t/f"
  pport = gets.chomp
end

if (orders.count "b") != 0
  puts "Two or more batteries? t/f"
  batteries = gets.chomp
end

cuts = []

orders.each do |order|
  if order == "c"
    cuts.push("Cut")
  elsif order == "d"
    cuts.push("Leave")
  elsif (order == "s")&&(sn_last_even)
    cuts.push("Cut")
  elsif (order == "p")&&(pport == "t")
    cuts.push("Cut")
  elsif (order == "b")&&(batteries == "t")
    cuts.push("Cut")
  else
    cuts.push("Leave")
  end
end

puts cuts
