class User < ApplicationRecord
  has_secure_password

  enum role: [:client, :admin]
  has_many :spaces, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :username, uniqueness: { case_sensitive: false }

  # def admin?
  #   role == 'admin'
  # end
end
