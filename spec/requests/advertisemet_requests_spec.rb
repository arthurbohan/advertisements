require 'rails_helper'

RSpec.describe 'Advertisement', type: :request do
  let(:advertisement) { FactoryBot.create(:advertisement) }
  let(:user) { FactoryBot.create(:user, email: 'newtest@gmail.com') }

  context 'when signed in' do
    before do
      post '/users/sign_in', params: { user: { email: user.email,
                                               password: user.password } }
    end

    it 'renders advertisements page' do
      get '/advertisements'
      expect(response).to have_http_status(:ok)
    end

    it 'renders new advertisement page' do
      get '/advertisements/new/'
      expect(response).to render_template(:new)

      post '/advertisements', params: { advertisement: {
                                         name: advertisement.name,
                                         user: advertisement.user } }

      expect(response).to have_http_status(:found)

      follow_redirect!
      expect(response).to have_http_status(:ok)
      expect(response.body).to include('Advertisement was successfully created as draft.')
    end
  end
end
