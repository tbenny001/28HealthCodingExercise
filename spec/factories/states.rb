FactoryBot.define do
  factory :state do
    name { "MyString" }
    symbol { "MyString" }
    service_availability { false }
    min_required_age { 1 }
  end
end
