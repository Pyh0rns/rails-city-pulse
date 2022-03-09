class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :pulses, dependent: :destroy
  has_many :favorites, dependent: :destroy
  belongs_to :city

  validates :nickname, presence: true
  validates :city, presence: true

  has_one_attached :photo

  def experience
    favorite = Favorite.where(user_id: id).count * 10
    pulse = Pulse.where(user_id: id).count * 100

    fake = 0
    Pulse.where(user_id: id).each do |pulse|
      fake += pulse.fake_votes
    end

    message = Message.where(user_id: id).count * 20
    user = User.find(id)
    user.xp = favorite + pulse + message + fake
    user.save!
    return user.xp
  end

  def level
    user = User.find(id)
    if user.xp > 500
      user.grade = 'Champion'
    elsif user.xp > 200
      user.grade = 'Initié'
    else
      user.grade = 'Novice'
    end
    user.save!
    return user.grade
  end
end
