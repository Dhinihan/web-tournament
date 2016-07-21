require 'rails_helper'

RSpec.describe TournamentsController, type: :controller do

  let :tournament_type do
    build(:tournament_type)
  end

  describe "POST new" do
    it "Should create new tournament with only type and name" do
      post :create, {
        :tournament => {
          :name => "New Tournament",
          :tournament_type_id => tournament_type.id
        },
        :format => :json
      }
      expect(response.content_type).to eq "application/json"
      expect(response.status).to eq 200
      expect(JSON(response.body)).to have_key("id")
    end

    it "Should not create new tournament without a name" do
      post :create, {
        :tournament => {
          :tournament_type_id => tournament_type.id
        },
        :format => :json
      }
      expect(response.content_type).to eq "application/json"
      expect(response.status).to eq 422
      expect(JSON(response.body)).to have_key("name")
    end

    it "Should not create new tournament without a type" do
      post :create, {
        :tournament => {
          :name => "New Tournament",
        },
        :format => :json
      }
      expect(response.content_type).to eq "application/json"
      expect(response.status).to eq 422
      expect(JSON(response.body)).to have_key("tournament_type_id")
    end

  end
end
