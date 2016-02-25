require "spec_helper"

describe "Array" do
  context "#all_empty?" do
    it "returns true if all elements of the Array are empty" do
      expect(["", "", ""].all_empty?).to be true
    end

    it "returns false if one of the elements of the Array is not empty" do
      expect(["", "hello", ""].all_empty?).to be false
    end

    it "returns true for an empty Array" do
      expect([].all_empty?).to be true
    end
  end

  context "#all_same?" do
    it "returns true if all elements of the Array are the same" do
      expect(["X", "X", "X"].all_same?).to be true
    end

    it "returns false if one of the elements of the Array is not the same" do
      expect(["X", "hello", "X"].all_same?).to be false
    end

    it "returns true for an empty Array" do
      expect([].all_same?).to be true
    end
  end

  context "#any_empty?" do
    it "returns true if any elements of the Array are empty" do
      expect(["", "X", "X"].any_empty?).to be true
    end

    it "returns false if none of the elements of the Array is empty" do
      expect(["X", "hello", "X"].any_empty?).to be false
    end
  end

  context "#none_empty?" do
    it "returns false if any elements of the Array are empty" do
      expect(["", "X", "X"].none_empty?).to be false
    end

    it "returns true if none of the elements of the Array is empty" do
      expect(["X", "hello", "X"].none_empty?).to be true
    end
  end
end
