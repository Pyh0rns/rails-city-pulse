class City < ApplicationRecord
  has_many :users
  has_many :pulses, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_city,
    against: [ :name ],
    using: {
      tsearch: { prefix: true }
    }
end
