class City < ApplicationRecord
  has_many :users
  has_many :pulses, dependent: :destroy
end
