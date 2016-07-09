class TournamentTypesController < ApplicationController

  def index
    render :json => TournamentType.all()
  end

end
