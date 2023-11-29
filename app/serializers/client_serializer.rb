class ClientSerializer < ActiveModel::Serializer
  attributes :id, :username , :first_name, :last_name, :email, :profile_picture, :password
  has_many :reviews
  has_many :bookings
end
