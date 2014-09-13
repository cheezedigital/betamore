FactoryGirl.define do
  factory :product do
    name "A product name"
    price { rand(100) + 1 }
  end
end
