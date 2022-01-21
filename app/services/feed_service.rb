class FeedService
  def initialize(user, friend, payment)
    @user = user
    @friend = friend
    @payment = payment
  end

  def create_feed
    add_users + add_time_description
  end

  private

  def add_users
    @user.full_name + ' paid ' + @friend.full_name
  end

  def add_time_description
    ' at ' + @payment.created_at.to_s + ' - ' + @payment.description
  end
end
