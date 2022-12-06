class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, presence: true
  validates :encrypted_password, length: { minimum: 6 }

  validates_presence_of :first_name, :last_name
  validates :phone_number, length: { minimum: 8 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :artist, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :users_rooms, dependent: :destroy
  has_many :message_rooms, through: :users_rooms
  has_many :messages, dependent: :destroy
  has_many :user_likes, dependent: :destroy
  has_one_attached :avatar
end
