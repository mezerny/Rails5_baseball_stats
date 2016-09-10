FactoryGirl.define do
  factory :division do
    division_name 'Division'
    association :league, factory: :league
  end
end
