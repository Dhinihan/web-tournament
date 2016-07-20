class PlayersController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    players = [}]

    players_names = player_params[:collection]
    tournament = Tournament.find(player_params[:tournament_id])

    players_names.map do |player_name|
      player = Player.new({
        name: player_name,
        tournaments: [tournament]
      })
      player.save
      players.push player
    end
    render :json => players
  end

  private

  def player_params
    players = params.require(:players)
    collection = players.require(:collection)
    players.permit(:tournament_id)
    players
  end

end
