FactoryGirl.define do
  factory :league do
    association :season, factory: :season
    league_name 'League'
  end
end
