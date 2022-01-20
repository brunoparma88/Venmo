require 'rails_helper'

describe 'GET api/v1/users', type: :request do
  let!(:users) { create_list(:user, 5) }
  let!(:user_with_friend) { create(:user, :with_friend) }

  subject do
    get api_v1_users_path, as: :json
  end

  it 'returns ok status' do
    subject
    expect(response).to have_http_status(:ok)
  end

  it 'returns the user' do
    subject
    expect(response.body).to include_json(
      users: users.map do |user|
               {
                 id: user.id,
                 first_name: user.first_name.as_json,
                 last_name: user.last_name.as_json,
                 full_name: user.full_name.as_json
               }
             end
    )
  end
end
