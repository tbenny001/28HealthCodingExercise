FactoryBot.define do
  factory :patient do
    full_name { "MyString" }
    email { "MyString" }
    birth_date { "2021-08-07 10:03:50" }
    state { nil }
  end
end
