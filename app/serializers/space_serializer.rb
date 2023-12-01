class SpaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :price, :status, :image, :description, :contact, :features
  # has_one :admin
end
