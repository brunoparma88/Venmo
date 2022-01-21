FactoryBot.define do
  factory :friendship do
    user { create(:user, :with_account) }
    friend { create(:user, :with_account) }
  end
end
