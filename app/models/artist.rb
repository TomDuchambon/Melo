class Artist < ApplicationRecord
  belongs_to :user
  validates_presence_of :name, :genre, :description, :is_group, :instrument
  validates :description, length: { minimum: 25 }
  validates_uniqueness_of :user, message: 'Sorry, you already have an artist profile!'
  has_many :reviews
  has_one_attached :avatar
  has_one_attached :banner
  has_many_attached :photos
  monetize :rate_cents
  has_many :bookings
  has_many :orders
end
