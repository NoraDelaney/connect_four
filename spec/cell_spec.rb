require_relative "../lib/connect_four"

describe Cell do

  context "#initialize" do
    it "is initailized with a value of '' by default" do
      cell = Cell.new
      expect(cell.value). to eq ''
    end
    it "can be initialized with a value of 'x'" do
      cell = Cell.new("x")
      expect(cell.value).to eq "x"
    end
  end
end
