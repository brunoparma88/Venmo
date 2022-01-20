FactoryBot.define do
  factory :friendship do
    friend { create(:user) }
  end
end
