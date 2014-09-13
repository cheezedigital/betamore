require 'rails_helper'

RSpec.describe LineItem, :type => :model do
  describe "#total_price" do
    let(:product) { double("Product", price: 50) }
    let(:line_item) do
      line_item = LineItem.new
      line_item.stub(:product).and_return(product)
      line_item
    end

    it "returns 100 for a quantity of 2" do
      line_item.quantity = 2
      expect(line_item.total_price).to eq(100)
    end
  end
end
