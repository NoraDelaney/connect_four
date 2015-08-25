require_relative "../lib/connect_four"

describe Player do
  
  context "#initialize" do
    it "raises an exception when intieilized with {}" do
      expect { Player.new({})}.to raise_error
    end
    it "does not raise an error when initialized with a valid input hash" do
      input = { color: "x", name: "Sue" }
      expect { Player.new(input) }.to_not raise_error
    end
  end

  context "#color" do
    input = { color: "x", name: "Sue"}
    player = Player.new(input)
    expect(player.color).to eq "x"
  end
end
