class Comment < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  belongs_to :link

  def self.make_comment(link, user)
    
  end
end
