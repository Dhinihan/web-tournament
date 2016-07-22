require 'rails_helper'

RSpec.describe Match, type: :model do
  let :match_against_players do
    build(:match, :against_players)
  end
  let :match_against_matches do
    build(:match, :against_matches)
  end
  let :match_against_player do
    build(:match, :match_against_player)
  end

  it "can be printed in a friendly way" do
    expect match_against_players.to_s.to eq "Player 1 X Player 2"
    expect match_against_matches.to_s.to eq "Match 1 X Match 2"
    expect match_against_player.to_s.to eq "Match 3 X Player 3"
  end
end
