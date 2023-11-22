class Space < ApplicationRecord
  belongs_to :admin

  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
