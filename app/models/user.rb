class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :first_name, :last_name, presence: true

  has_many :friendships_as_friend_a,
           class_name: :Friendship,
           dependent: :destroy

  has_many :friendships_as_friend_b,
           foreign_key: :friend_id,
           class_name: :Friendship,
           dependent: :destroy,
           inverse_of: :user

  has_many :friend_as, through: :friendships_as_friend_b
  has_many :friend_bs, through: :friendships_as_friend_a
  has_many :payments, dependent: :destroy

  def full_name
    "#{first_name} #{last_name}"
  end

  def friendships
    friendships_as_friend_a + friendships_as_friend_b
  end
end
