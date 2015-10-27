#!/usr/bin/ruby
require 'pry'

puts "Enter wires as wyrbkw, using k for black."
wires = gets.chomp


number_of_wires = wires.length
puts number_of_wires.to_s + " wires found."

if number_of_wires > 3
  puts "Last digit of serial?"
  if gets.chomp.to_i.even?
    odd_sn = false
  else
    odd_sn = true
  end
end

if number_of_wires == 3
  if (wires.count "r") == 0
    wire_to_cut = 2
  elsif wires[wires.length-1] == "w"
    wire_to_cut = wires.length-1
  elsif (wires.count "b") > 1
    wire_to_cut = wires.rindex("b")+1
  else
    wire_to_cut = 3
  end
end

if number_of_wires == 4
  if ((wires.count "r") > 1)&&(odd_sn)
    wire_to_cut = wires.rindex("r")+1
  elsif (wires[wires.length-1] == "y")&&((wires.count "r") == 0)
    wire_to_cut = 1
  elsif (wires.count "b") == 1
    wire_to_cut = 1
  elsif (wires.count "y") > 1
    wire_to_cut = 4
  else
    wire_to_cut = 2
  end
end

if number_of_wires == 5
  if (wires[wires.length-1] == "k")&&(odd_sn)
    wire_to_cut = 4
  elsif ((wires.count "y") > 1)&&((wires.count "r") == 1)
    wire_to_cut = 1
  elsif (wires.count "k") == 0
    wire_to_cut = 2
  else
    wire_to_cut = 1
  end
end

if number_of_wires == 6
  if ((wires.count "y") == 0)&&(odd_sn)
    wire_to_cut = 3
  elsif ((wires.count "w") > 1)&&((wires.count "y") == 1)
    wire_to_cut = 4
  elsif (wires.count "r") == 0
    wire_to_cut = 6
  else
    wire_to_cut = 4
  end
end

puts "Cut wire " + wire_to_cut.to_s
