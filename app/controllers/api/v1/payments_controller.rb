module Api
  module V1
    class PaymentsController < ApplicationController
      def create
        @payment = current_user.payment.create!(payment_params)
        render :show
      end

      private

      def payment_params
        params.require(:payment).permit(:friend_id, :amount, :description, :user_id)
      end

      def current_user
        @current_user = User.find(params[:id] || params[:user_id])
      end
    end
  end
end
