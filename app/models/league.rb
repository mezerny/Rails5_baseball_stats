class League < ApplicationRecord
  belongs_to :season
  has_many :divisions, inverse_of: :league

  accepts_nested_attributes_for :divisions
end
