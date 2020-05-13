FactoryBot.define do
  factory :product do
    name { "MyString" }
    vendor { nil }
    list_price { "" }
    sell_price { "9.99" }
    on_sell { false }
    code { "MyString" }
    delete_at { "2020-05-12 16:13:34" }
  end
end
