require_relative "../lib/core_extensions"

describe Array do
  context "#all_empty?" do
    it "returns true if all elements of the Array are empty" do
      expect(["", "", "", "", "", "", ""].all_empty?).to be_true
    end
  end
end
