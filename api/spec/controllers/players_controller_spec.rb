require 'rails_helper'
require 'json'

RSpec.describe PlayersController, type: :controller do

  let :tournament do
    build(:tournament, :with_id)
  end

  describe "POST new" do
    it "Should create a collection of players and link then to a tournament" do
      allow(Tournament).to receive(:find).and_return(tournament)
      post :create, {
        :players => {
          :collection => [
            "Vinicius",
            "Fernanda",
          ],
          :tournament_id => tournament.id
        },
        :format => :json
      }
      expect(response.content_type).to eq "application/json"
      expect(response.status).to eq 200
      expect(JSON(response.body)[0]).to have_key("id")
      expect(JSON(response.body)[0]["name"]).to eq("Vinicius")
      expect(JSON(response.body)[1]).to have_key("id")
      expect(JSON(response.body)[1]["name"]).to eq("Fernanda")
    end
  end
end
