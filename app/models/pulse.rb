class Pulse < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :city
  belongs_to :user
  has_many :pulse_categories, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :categories, through: :pulse_categories

  validates :title, length: { minimum: 1 }
  # Mettre plus dans le validates title solution et problem genre 300
  validates :solution, length: { minimum: 3 }
  validates :problem, length: { minimum: 1 }
  validates :address, presence: true

  include PgSearch::Model
  pg_search_scope :global_search, against: [ :title, :solution, :problem],
  using: { tsearch: { prefix: true } },
  associated_against: { user: [ :nickname ] }

  def liked?(user)
    return true if Favorite.find_by(user: user, pulse: self)
    return false
  end

  # A TERMINER PY
  # def best_favorites(user)
  #   @best_pulses = []
  #   Pulse.where(user_id: user).each do |pulse|
  #     @best_pulses << pulse.favorites
  #   end
  #   return @best_pulses
  # end

end
