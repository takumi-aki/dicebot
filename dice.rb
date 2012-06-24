class Dice
  MINIMUM_VALUE = 1
  DEFAUL_NUMBER_OF_SIDE = 6
  attr_accessor :number_of_side

  def initialize(number_of_side=DEFAUL_NUMBER_OF_SIDE)
    @number_of_side = number_of_side
  end

  def roll(number_of_roll=1)
    result_numbers = []
    number_of_roll.times {result_numbers << rand(number_of_side) + 1 }

    result_sum = 0
    for result in result_numbers
      result_sum = result_sum + result
    end

    result_sum
  end
end
