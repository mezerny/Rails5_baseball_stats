class Division < ApplicationRecord
  belongs_to :league
  has_many :teams, inverse_of: :division

  accepts_nested_attributes_for :teams
end
