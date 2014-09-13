require 'rails_helper'

feature "UserViewsProducts", :type => :feature do

  before do
    3.times { FactoryGirl.create(:product) }
    visit products_path
  end

  it "lists all the products in the app" do
    Product.all.each do |product|
      expect(page).to have_content(Product.name)
    end
  end

end
