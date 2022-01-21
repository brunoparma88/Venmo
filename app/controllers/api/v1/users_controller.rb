module Api
  module V1
    class UsersController < ApplicationController
      include Pagy::Backend

      def index
        @users = User.all
      end

      def feed
        feeds = feed_payments
        @pagy, @feeds = pagy(feeds, page: page)
        @feeds = @feeds.by_date
        @metadata = pagy_metadata(@pagy)
      end

      def balance
        balance = current_user.account.balance
        render json: { balance: balance }, status: :ok
      end

      private

      def feed_payments
        friends = friends_second_degree
        Feed.where(user_id: friends).or(Feed.where(friend_id: friends)).distinct
            .order(created_at: :desc).includes(:user, :friend)
      end

      def friends_second_degree
        current_user_id = current_user.id
        friends_a = friends_of([current_user_id])
        friends_b = friends_of(friends_a)
        ([current_user_id] + friends_b).uniq
      end

      def friends_of(users)
        friendship = Friendship
        friendship.where(user_id: users).or(friendship.where(friend_id: users))
                  .pluck(:user_id, :friend_id).flatten.uniq
      end

      def page
        params[:page] || 1
      end

      def current_user
        @current_user ||= User.find(params[:id])
      end
    end
  end
end
