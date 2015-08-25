class Board
  attr_reader :grid
  def initialize(input = {})
    @grid = input.fetch(:grid, default_grid)
  end

  private

  def default_grid
    Array.new(6) { Array.new(7) { Cell.new } }
  end
end

class Cell
  attr_accessor :value
  def initialize(value = "")
    @value = value
  end
end

class Player
  attr_accessor :color, :name
  def initiaize(input)
    @color = input.fetch(:color)
    @name = input.fetch(:name)
  end
end
