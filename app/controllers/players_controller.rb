class PlayersController < ApplicationController

  def hitter_stats
    render json: Player.select('given_name, surname, home_runs, rbi, runs, steals')
                     .select('( hits / at_bats ::float ) as avg')
                     .select('((hits + walks + hit_by_pitch) / (at_bats + walks + hit_by_pitch + sacrifice_flies) ::float) + ((hits + 2 * doubles + 3 * triples) / at_bats ::float) as ops')
                     .where.not(at_bats: nil)
                     .where.not(at_bats: 0)
                     .limit(params[:limit])
                     .order(params[:order])
  end
end
