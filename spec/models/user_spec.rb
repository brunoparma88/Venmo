require 'rails_helper'

describe User do
  describe 'validations' do
    subject { build(:user) }
    it { is_expected.to validate_presence_of(:username) }
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
  end

  describe 'asociation' do
    subject { build(:user, :with_friend) }
    it { is_expected.to have_many(:friendships_as_friend_a).dependent(:destroy) }
    it { is_expected.to have_many(:friendships_as_friend_b).dependent(:destroy) }
  end
end
