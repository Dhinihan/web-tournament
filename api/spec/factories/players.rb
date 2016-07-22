FactoryGirl.define do
  factory :player do
    sequence(:id) { |n| n }
    sequence(:name) { |n| "Player #{n}" }
    trait :anonymous do
      name nil
    end
  end
end