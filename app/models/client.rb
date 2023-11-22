class Client < ApplicationRecord
  has_secure_password

  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
