require 'test/unit'
require 'set'
require_relative 'dice'

class TC_Dice < Test::Unit::TestCase
  def setup
  end

  def test_roll
    dice = Dice.new(6)
    set  = Set.new(1..6)
    assert_block do
      100.times do
        set.member?(dice.roll)
      end
    end
  end
end
