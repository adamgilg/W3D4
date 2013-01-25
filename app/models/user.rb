class User < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :comments
  has_many :visits

  # def
  # end
end
