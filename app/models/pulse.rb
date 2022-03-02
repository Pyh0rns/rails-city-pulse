class Pulse < ApplicationRecord
  belongs_to :city
  belongs_to :user
  has_many :pulse_categories
  has_many :favorites
  has_many :categories, through: :pulse_categories

  validates :title, length: { minimum: 6 }
  validates :solution, length: { minimum: 300 }
  validates :problem, length: { minimum: 150 }
  validatates :address, presence: true
end
