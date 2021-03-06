FactoryBot.define do
  factory :user do
    first_name  { Faker::Name.first_name }
    last_name   { Faker::Name.last_name }
    username    { Faker::Name.last_name }

    trait :with_friend do
      after(:create) do |user|
        friend = create(:user)
        create(:friendship, friend: friend, user: user)
      end
    end

    trait :with_account do
      after(:create) do |user|
        user.account ||= create(:account, user: user)
      end
    end
  end
end
