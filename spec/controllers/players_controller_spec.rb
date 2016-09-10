require 'rails_helper'

RSpec.describe PlayersController, type: :controller do

  describe 'GET #hitter_stats' do
    it 'returns hitter_stats as a json' do
      FactoryGirl.create(:player)
      get :hitter_stats, params: {limit: 2, order: 'avg asc'}
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).length).to eq(1)
    end
  end
end
