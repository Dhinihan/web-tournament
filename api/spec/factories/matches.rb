FactoryGirl.define do
  factory :match do
    number 1
    round
    association :player_1, factory: :player, name: "Player 1"
    association :player_2, factory: :player, name: "Player 2"
  end
end
