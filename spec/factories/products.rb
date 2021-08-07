FactoryBot.define do
  factory :product do
    name { "MyString" }
    drug_code { "MyString" }
    quantity { 1 }
    price { 1 }
    instructions { "MyText" }
    type { "" }
  end
end
