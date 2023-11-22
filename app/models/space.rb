class Space < ApplicationRecord
  belongs_to :admin

  has_many :bookings, dependent: :destroy
end
