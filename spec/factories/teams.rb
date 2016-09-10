FactoryGirl.define do
  factory :team do
    team_city 'City'
    team_name 'Team Name'
    association :division, factory: :division
  end
end
