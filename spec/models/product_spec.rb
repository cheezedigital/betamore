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
        name: "Another incredible Product",
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

  describe '.cheap' do
    let!(:cheap_product) { Product.create!(name: 'wut', price: 10) }
    let!(:expensive_product) { Product.create!(name: 'wut', price: 100) }
    let!(:unsure_product) { Product.create!(name: 'wut', price: 50) }

    it " returns products less than $50" do
      expect(Product.cheap).to eq([cheap_product])
    end
  end
end
