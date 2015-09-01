require_relative "core_extensions"

class Board
  attr_reader :grid
  def initialize(input = {})
    @grid = input.fetch(:grid, default_grid)
  end

  def get_cell(x, y)
    grid[y][x]
  end

  def set_cell(x, y, value)
    get_cell(x, y).value = value
  end

  def draw?
    grid.flatten.map { |cell| cell.value }.none_empty?
  end

  def game_over
    return :winner if winner?
    return :draw if draw?
    false
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
