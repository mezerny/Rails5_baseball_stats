FactoryGirl.define do
  factory :player do
    association :team, factory: :team
    id 1
    surname 'Malloy'
    given_name 'Marty'
    position 'Second Base'
    games 11
    games_started 8
    at_bats 28
    runs 3
    hits 5
    doubles 1
    triples 0
    home_runs 1
    rbi 1
    steals 0
    caught_stealing 0
    sacrifice_hits 0
    sacrifice_flies 0
    errs 0
    pb 0
    walks 2
    struck_out 2
    hit_by_pitch 0
  end
end
