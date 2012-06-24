require 'test/unit'
require_relative 'dice'

class TC_Dice < Test::Unit::TestCase
  def setup
    @number_of_roll = rand(6) + 1
    @minimum_total_value = Dice::MINIMUM_VALUE * @number_of_roll
  end

  def test_roll_one_dice_of_six_side
    assert_block do
      success = true
      100.times do
        result = Dice.new.roll
        if result < Dice::MINIMUM_VALUE || result > Dice::DEFAUL_NUMBER_OF_SIDE
          success = false
          break
        end
      end

      success
    end
  end

  def test_roll_some_dice_of_six_sided
    assert_block do
      success = true
      100.times do
        result = Dice.new.roll(@number_of_roll) 
        if result < @minimum_total_value || result > @number_of_roll * Dice::DEFAUL_NUMBER_OF_SIDE
          success = false
          break
        end
      end
    end
  end

  def test_roll_some_dice_of_some_side
    number_of_side = rand(10) + 1

    assert_block do
      success = true
      100.times do
        result = Dice.new(number_of_side).roll(@number_of_roll)
        if result < @minimum_total_value || result > @number_of_roll * number_of_side 
          success = false
          break
        end
      end
    end
  end
end
