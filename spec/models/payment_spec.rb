require 'rails_helper'

describe Payment do
  describe 'asociation' do
    subject { build(:payment) }
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:friend) }
  end

  describe 'validations' do
    describe 'max and min amount' do
      subject { build(:payment) }
      it do
        is_expected.to validate_numericality_of(:amount)
          .is_greater_than_or_equal_to(Payment::MIN_AMOUNT)
          .is_less_than_or_equal_to(Payment::MAX_AMOUNT)
      end

      it 'is valid with valid attributes' do
        expect(subject).to be_valid
      end

      it do
        is_expected.to validate_numericality_of(:amount)
          .is_greater_than_or_equal_to(Payment::MIN_AMOUNT)
          .is_less_than_or_equal_to(Payment::MAX_AMOUNT)
      end
    end

    describe 'same user' do
      let(:user) { create(:user) }

      subject(:create_payment) do
        create :payment, user: user, friend: user
      end
      it 'raises an error if is already active' do
        error_message = /#{I18n.t('api.error.payment_same_account')}/
        expect { create_payment }.to raise_error(ActiveRecord::RecordInvalid, error_message)
      end
    end
  end
end
