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
end
