class Booking < ApplicationRecord
  belongs_to :space
  belongs_to :client


end


  # Like many other Active Record class methods, the symbol you pass determines the name of the instance method that will be defined. So belongs_to :author will give you a post.author instance method, and has_many :posts will give you author.posts.
