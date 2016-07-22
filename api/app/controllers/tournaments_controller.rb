class TournamentsController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    @tournament = Tournament.new(tournament_params)
    if @tournament.save
      render :json => @tournament
    else
      render :json => @tournament.errors, :status => 422
    end
  end

  private

  def tournament_params
    params.require(:tournament).permit(:name, :tournament_type_id)
  end

end
