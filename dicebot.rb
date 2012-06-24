#!/usr/bin/env ruby

require_relative 'dice'

input = ARGV[0]

input =~ /(\d+)d(\d+)/
number_of_roll = $1.to_i
number_of_side = $2.to_i || Dice::DEFAUL_NUMBER_OF_SIDE

if (number_of_roll == 0)
  print "Please enter this as for example '2d6' \n"
  exit
end

print Dice.new(number_of_side).roll(number_of_roll).to_s + "\n"
