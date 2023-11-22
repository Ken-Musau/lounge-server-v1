class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :username, :comment, :rating
  has_one :space
end
