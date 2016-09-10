require 'rails_helper'

RSpec.describe 'Players', type: :request do
  describe 'GET /hitter_stats' do
    it 'responds successfully with an HTTP 200 status code' do
      get hitter_stats_path
      expect(response.content_type).to eq('application/json')
      expect(response).to have_http_status(200)
    end
  end
end
