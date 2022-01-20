class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :first_name, :last_name, presence: true
end
