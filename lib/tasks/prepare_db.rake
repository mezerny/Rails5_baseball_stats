task prepare_db: :environment do
  require 'open-uri'
  data_hash = Hash.from_xml(open('http://www.cafeconleche.org/examples/baseball/1998statistics.xml'))
                  .deep_transform_keys do |key|
    case key
      when 'LEAGUE'
        'leagues_attributes'
      when 'DIVISION'
        'divisions_attributes'
      when 'TEAM'
        'teams_attributes'
      when 'PLAYER'
        'players_attributes'
      when 'ERRORS'# need this to prevent from ActiveRecord DangerousAttributesError
          'errs'
      else
        key.downcase
    end
  end
  puts Season.create!(data_hash['season'])
end