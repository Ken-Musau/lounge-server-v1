class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :email, :profile_picture, :role, :contact
  has_many :bookings
  has_many :reviews
end
