require_relative "../lib/connect_four"

describe Board do

  context "#initialize" do
    it "initializes the board with a grid" do
      expect { Board.new(grid: "grid") }.to_not raise_error
    end
  end

  it "sets the grid with six rows by default" do
    board = Board.new
    expect(board.grid).to have(6).things
  end

  it "creates seven things in each row by default" do
    board = Board.new
    board.grid.each do |row|
      expect(row).to have(6).things
    end
  end

  context "#grid" do
    it "returns the grid" do
      board = Board.new(grid:"yay!")
      expect(board.grid).to eq "yay!"
    end
  end

  context "#get_cell" do
    it "returns the cell based on the (x, y) coordinate" do
      grid = [["", "", "", "", "", "", ""], ["", "", "something", "", "", "", ""], ["", "", "", "", "", "", ""], ["", "", "", "", "", "", ""], ["", "", "", "", "", "", ""], ["", "", "", "", "", "", ""]]
      board = Board.new(grid: grid)
      expect(board.get_cell(2, 1)).to eq "something"
    end
  end
end
