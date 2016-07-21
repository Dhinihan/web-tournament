FactoryGirl.define do
  factory :round do
    number 1
    tournament nil
      transient do
        matches_count 2
      end
      after(:create) do |round, evaluator|
        create_list(:match, evaluator.matches_count, round: round)
      end
  end
end
