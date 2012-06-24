class Dice
  attr_accessor :surface

  def initialize(surface=6)
    @surface = surface
  end

  def roll
    rand(surface) + 1
  end
end
