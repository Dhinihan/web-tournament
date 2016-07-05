FactoryGirl.define do
  factory :player do
    name 'Player 1'
    trait :anonymous do 
      name nil
    end
  end
end