class AdminSerializer < ActiveModel::Serializer
  attributes :id, :username , :first_name, :last_name, :email, :profile_picture
end
