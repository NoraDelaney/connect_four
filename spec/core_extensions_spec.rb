require_relative "../lib/core_extensions"

describe Array do
  context "#all_empty?" do
    it "returns true if all elements of the Array are empty" do
      expect(["", "", "", "", "", "", ""].all_empty?).to be_truthy
    end

    it "returns false if some of the Array elements are not empty" do
      expect(["", 1, "", "", "", "", "", Object.new, :a].all_empty?).to be_falsey
    end

    it "returns true for an empty Array" do
      expect([].all_empty?).to be_truthy
    end
  end

  context "#all_same?" do
    it "returns true if all elements of the Array are the same" do
      expect(["A", "A", "A"].all_same?).to be_truthy
    end

    it "returns false if some of the Array elements are different" do
      expect(["", 1, "", Object.new, :a].all_same?).to be_false
    end

    it "returns true for an empty Array" do
      expect([].all_same?).to be_true
    end
  end

  context "#any_empty?" do
    it "returns true if any of the elements of the Array are empty" do
      expect(["", 1, 2, 3, "", "", ""].any_empty?).to be_truthy
    end

    it "returns false if none of the Array elements are empty" do
      expect(["", 1, "", "", "", "", "", Object.new, :a].any_empty?).to be_falsey
    end

    it "returns true for an empty Array" do
      expect([].any_empty?).to be_truthy
    end
  end

  context "#none_empty?" do
    it "returns true if none of the Array elements are empty" do
      expect([1, 2, 3, "cow"].none_empty?).to be_truthy
    end

    it "returns false if any of the Array elements are empty" do
      expect(["", 1, "", "", "", "", "", Object.new, :a].none_empty?).to be_falsey
    end

    it "returns false for an empty arrary" do
      expect([].none_empty?).to be_truthy
    end
  end
end
