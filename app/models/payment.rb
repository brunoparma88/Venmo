class Payment < ApplicationRecord
  MAX_AMOUNT = 1000
  MIN_AMOUNT = 0
  belongs_to :user
  belongs_to :friend, class_name: :User
  validates :amount,
            numericality: { greater_than_or_equal_to: MIN_AMOUNT,
                            less_than_or_equal_to: MAX_AMOUNT }

  validate :diferent_account, on: :create

  def diferent_account
    return if user != friend

    errors.add(:account, I18n.t('api.error.payment_same_account'))
  end
end
