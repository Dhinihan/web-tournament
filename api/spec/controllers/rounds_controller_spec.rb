require 'rails_helper'

RSpec.describe RoundsController, type: :controller do

  let :tournament do
    build(:tournament, :with_id, :with_round)
  end

  describe "GET index"
    it "Should return a first round from a new 4-player tournament" do
      allow(Tournament).to receive(:find).and_return(tournament)
      get :index, {:params => {:tournament => tournament.id}}
      expect(response.content_type).to eq "application/json"
      expect(response.status).to eq 200
      json_body = JSON(response.body)
      expect(json_body).to be_kind_of(Array)
      expect(json_body[0]["tournament_id"]).to eq(tournament.id)
    end

end
