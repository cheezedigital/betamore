require 'rails_helper'

RSpec.describe Product, :type => :model do
  describe '.incredible' do
    let!(:incredible_product) {
      Product.create!({
        name: "Incredible product",
        price: 49.95
      })
    }

    let!(:boring_product) {
      Product.create!({
        name: "Boring Product",
        price: 25.95
      })
    }

    let!(:another_incredible_product) {
      Product.create!({
        name: "Another Incredible Product",
        price: 25.99
      })
    }

    it "returns products with 'Incredible' in their name" do
      expect(Product.incredible).to eq([incredible_product, another_incredible_product])
    end

    it "doesn't return 'Boring Product'" do
      expect(Product.incredible).not_to include(boring_product)
    end
  end
end
