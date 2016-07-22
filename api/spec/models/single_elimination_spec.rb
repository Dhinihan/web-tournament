require 'rails_helper'

RSpec.describe SingleElimination, type: :model do

  let :tournament do
    build(:tournament, :with_players)
  end


  it "can arrange a 4-player tournament" do
    se = SingleElimination.new
    se.generateRounds(tournament)
    print("#{tournament.rounds[1].matches.as_json}\n")
  end
end
