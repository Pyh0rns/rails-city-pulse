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

  def experience(user)
    favorite = Favorite.where(user_id: user.id).count * 10
    pulse = Pulse.where(user_id: user.id).count * 100
    user.xp = favorite + pulse
    user.save!
    return user.xp
  end

  def level
    @user = User.find(id)
    if @user.xp > 500
      @user.grade = 'Challenger'
    else
      @user.grade = 'Novice'
    end
    @user.save!
    return @user.grade
  end
end
