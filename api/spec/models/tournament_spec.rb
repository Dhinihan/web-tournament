require 'rails_helper'

RSpec.describe Tournament, type: :model do
  
  let :tournament do 
    build :tournament
  end

  let :anonymous_tournament do 
    build :tournament, :anonymous
  end

  let :typeless_tournament do 
    build :tournament, :typeless
  end

  let :tournament_with_players do
    build :tournament, :with_players
  end

  let :player do
    build :player
  end

  it "Must have a name and a type" do
    expect(tournament).to be_valid
    expect(anonymous_tournament).not_to be_valid
    expect(typeless_tournament).not_to be_valid
  end

  it "Can change the name" do
    tournament.name = 'Another Name'
    expect(tournament.name).to eq('Another Name')
  end

  it "Can check players" do
    expect(tournament_with_players.players[0].name).to eq('Player 1')
  end

  it "Can add players" do
    expect(tournament.players.length).to eq(0)
    tournament.players << player
    expect(tournament.players.length).to eq(1)
    expect(tournament_with_players.players[0].name).to eq('Player 1')
  end

  it "Can check player score" do
    tournament_with_players.players[0].n_wins = 5
    tournament_with_players.players[0].n_loses = 3
    tournament_with_players.registered_players[0].n_wins = 1
    tournament_with_players.registered_players[0].n_loses = 2
    expect(tournament_with_players.players[0].n_wins).to eq(5)
    expect(tournament_with_players.registered_players[0].n_wins).to eq(1)
    expect(tournament_with_players.players[0].n_loses).to eq(3)
    expect(tournament_with_players.registered_players[0].n_loses).to eq(2)
  end

end
