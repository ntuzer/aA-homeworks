require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:pastry) { Dessert.new("pastry", 5, "Jo")}

  describe "#initialize" do
    it "sets a type" do
      expect(pastry.type).to eq("pastry")
    end

    it "sets a quantity" do
      expect(pastry.quantity).to eq(5)
    end

    it "starts ingredients as an empty array" do
      expect(pastry.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{Dessert.new("pastry","error","chef")}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      pastry.add_ingredient("sugar")
      expect(pastry.ingredients).to include("sugar")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array"do
      pastry.add_ingredient("sugar")
      pastry.add_ingredient("spice")
      pastry.add_ingredient("nice")
      expect(pastry.ingredients).not_to eq(pastry.ingredients.shuffle)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
