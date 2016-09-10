class PlayersController < ApplicationController

  def hitter_stats
    render json: Player.all.limit(25)
  end
end
