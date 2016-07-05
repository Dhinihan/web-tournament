require 'rails_helper'

RSpec.describe Player, type: :model do

  let :player do
    build :player
  end

  let :anonymous_player do
    build :player, :anonymous
  end

  it "can attribute a name" do
    player.name = 'Another Name'
    expect(player.name).to eq('Another Name')
  end
  it "is initiated with 0 wins and 0 loses" do
    player.save
    expect(player.n_wins).to eq(0)
    expect(player.n_loses).to eq(0)
  end
  it "must have a name" do
    expect(player).to be_valid
    expect(anonymous_player).not_to be_valid
  end


end
