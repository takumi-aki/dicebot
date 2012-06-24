require 'test/unit'
require 'set'
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
        if Dice.new.roll < Dice::MINIMUM_VALUE
          success = false
          break
        end
      end

      success
    end

    assert_block do
      success = true
      100.times do
        if Dice.new.roll > Dice::DEFAUL_NUMBER_OF_SIDE
          success = false
          break
        end
      end
    end
  end

  def test_roll_some_dice_of_six_sided
    assert_block do
      success = true
      100.times do
        if Dice.new.roll(@number_of_roll) < @minimum_total_value
          success = false
          break
        end
      end
    end

    assert_block do
      success = true
      100.times do
        if Dice.new.roll(@number_of_roll) > @number_of_roll * Dice::DEFAUL_NUMBER_OF_SIDE
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
        if Dice.new(number_of_side).roll(@number_of_roll) < @minimum_total_value
          success = false
          break
        end
      end
    end

    assert_block do
      success = true
      100.times do
        if Dice.new(number_of_side).roll(@number_of_roll) > @number_of_roll * number_of_side
          success = false
          break
        end
      end
    end
  end
end
