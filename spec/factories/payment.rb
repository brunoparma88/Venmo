FactoryBot.define do
  factory :payment do
    user { create(:user) }
    friend { create(:user) }
    amount { Faker::Number.decimal(l_digits: 3, r_digits: 2) }
    description { 'test msg' }
  end
end
