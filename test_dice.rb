require 'test/unit'
require 'set'
require_relative 'dice'

class TC_Dice < Test::Unit::TestCase
  def setup
    @number_of_roll = rand(6) + 1
    @minimum_total_value = Dice::MINIMUM_VALUE * @number_of_roll
  end

  def test_roll_one_dice_of_six_side
    100.times do
      result = Dice.new.roll
      assert(result >= Dice::MINIMUM_VALUE)
      assert(result <= Dice::DEFAUL_NUMBER_OF_SIDE)
    end
  end

  def test_roll_some_dice_of_six_sided
    100.times do
      result = Dice.new.roll(@number_of_roll)
      assert(result >= @minimum_total_value)
      assert(result <= Dice::DEFAUL_NUMBER_OF_SIDE * @number_of_roll)
    end
  end

  def test_roll_some_dice_of_some_side
    100.times do
      number_of_side = rand(10) + 1
      result = Dice.new(number_of_side).roll(@number_of_roll) 
      assert(result >= @minimum_total_value)
      assert(result <= number_of_side * @number_of_roll)
    end
  end
end
