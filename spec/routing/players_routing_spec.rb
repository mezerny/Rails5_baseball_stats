require 'rails_helper'

RSpec.describe PlayersController, type: :routing do
  describe 'routing' do

    it 'routes to #hitter_stats' do
      expect(get: '/hitter_stats').to route_to(controller: 'players', action: 'hitter_stats', format: :json)
    end
  end
end
