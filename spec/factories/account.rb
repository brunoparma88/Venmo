FactoryBot.define do
  factory :account do
    user { create(:user) }
    balance { Faker::Number.decimal(l_digits: 5, r_digits: 2) }
  end
end
