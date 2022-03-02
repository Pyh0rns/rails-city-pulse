class Pulse < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :city
  belongs_to :user
  has_many :pulse_categories
  has_many :favorites, dependent: :destroy
  has_many :categories, through: :pulse_categories

  validates :title, length: { minimum: 1 }
  # Mettre plus dans le validates title solution et problem genre 300
  validates :solution, length: { minimum: 3 }
  validates :problem, length: { minimum: 1 }
  validates :address, presence: true

  include PgSearch::Model
  pg_search_scope :global_search, against: [ :title, :solution, :problem ],
    associated_against: { user: [ :nickname ] }, using: { tsearch: { prefix: true } }
end
