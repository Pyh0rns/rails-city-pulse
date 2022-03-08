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
  # validates :photo, presence: true

  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :global_search, against: [:title, :solution, :problem],
  using: { tsearch: { prefix: true } },
  associated_against: { user: [ :nickname ] }

  def liked?(user)
    return true if Favorite.find_by(user: user, pulse: self)
    return false
  end

  # def statut
  #   Pulse.all.each do |pulse|
  #     pulse.status = "Votes en cours"
  #     pulse.save!
  #   end
  # end
end

# <%= link_to city_pulse_path(current_user.city.id, pulse.id), method: :patch, class: "linkto" do %>
#   <p class="button-red mx-2"> Valider </p>
# <% end %>
