require 'rails_helper'

RSpec.describe Product, :type => :model do
  it "returns products with 'Incredible' in their name" do
    incredible_product = Product.create(name: "Incredible product", price: 49.00)
    boring_product = Product.create(name: "Boring product", price: 29.95)
    expect(Product.incredible).to eq([incredible_product])
  end
end
