class Feed < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: :User
  scope :by_date, -> { order(created_at: :desc) }
end
