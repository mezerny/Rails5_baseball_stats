class Season < ApplicationRecord
  has_many :leagues, inverse_of: :season
  accepts_nested_attributes_for :leagues

end
