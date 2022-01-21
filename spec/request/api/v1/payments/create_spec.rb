describe 'POST api/v1/user/{user_id}/payment', type: :request do
  let(:payment) { build(:payment) }

  describe 'POST create' do
    let(:user)        { payment.user }
    let(:friend)      { payment.friend }
    let(:amount)      { payment.amount }
    let(:description) { payment.description }

    let(:params) do
      {
        payment: {
          friend_id: friend.id,
          amount: amount,
          description: description
        }
      }
    end

    it 'returns a successful response' do
      post api_v1_user_payments_path(user.id), params: params, as: :json

      expect(response).to have_http_status(:success)
    end

    it 'creates the payment' do
      expect {
        post api_v1_user_payments_path(user.id), params: params, as: :json
      }.to change(Payment, :count).by(1)
    end

    it 'returns the payment' do
      post api_v1_user_payments_path(user.id), params: params, as: :json

      expect(json[:payment][:friend_id]).to eq(payment.friend.id)
      expect(json[:payment][:amount].to_d).to eq(payment.amount.to_d)
      expect(json[:payment][:description]).to eq(payment.description)
    end
  end
end
