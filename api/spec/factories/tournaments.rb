FactoryGirl.define do
  factory :tournament do
    name "Music Tournament"
    association :tournament_type, factory: :tournament_type, strategy: :build
    
    trait :anonymous do 
      name nil
    end
    
    trait :with_id do 
      id 1
    end
    
    trait :typeless do 
      tournament_type nil
    end

    trait :with_players do 
      transient do
        players_count 5
      end
      after(:build) do |tournament, evaluator|
        tournament.players = build_list(:player, evaluator.players_count, tournaments: [tournament])
      end
    end
  end
end
