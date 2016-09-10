class Team < ApplicationRecord
  belongs_to :division
  has_many :players, inverse_of: :team

  accepts_nested_attributes_for :players
end
