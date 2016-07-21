class RoundsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    render :json => Tournament.find(params[:tournament]).rounds
  end

end
