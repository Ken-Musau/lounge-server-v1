class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :username, :comment, :rating, :created_at, :updated_at
  has_one :space
  has_one :user
end
