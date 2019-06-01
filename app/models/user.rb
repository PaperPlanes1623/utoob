class User < ApplicationRecord
  has_many :comments, :through => :movies
end
