class Categorie < ApplicationRecord
  has_many :pulse_categories
  has_many :pulses, through: :pulse_categories
end
