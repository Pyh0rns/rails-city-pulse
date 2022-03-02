class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :pulse

  validates :user, uniqueness: { scope: :pulse }
end
