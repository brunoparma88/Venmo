module Api
  module V1
    class PaymentsController < ApplicationController
      def create
        return render_unapproved_contractor unless current_user.friendships?(friend)

        @payment = current_user.payments.create!(payment_params)
        send_money(payment_params[:amount].to_d)
        create_feed
        render :show
      end

      private

      def payment_params
        params.require(:payment).permit(:friend_id, :amount, :description, :user_id)
      end

      def current_user
        @current_user = User.find(params[:id] || params[:user_id])
      end

      def friend
        @friend = User.find(payment_params[:friend_id])
      end

      def send_money(amount)
        current_user_account = current_user.account
        friend_account = friend.account
        current_user_account.update!(balance: (current_user_account.balance - amount))
        friend_account.update!(balance: (friend_account.balance + amount))
      end

      def render_unapproved_contractor
        render(
          status: :bad_request,
          json: { error: I18n.t('api.error.not_friend') }
        )
      end

      def create_feed
        feed = FeedService.new(@current_user, @friend, @payment).create_feed
        current_user.feeds.create!(description: feed)
      end
    end
  end
end
