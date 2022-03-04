class City < ApplicationRecord
  has_many :users
  has_many :pulses, dependent: :destroy

  has_one_attached :photo
end
