class Visit < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  belongs_to :link

  def self.visit_link(link, user)
    v = Visit.new
    v.user_id = user.id
    v.link_id = link.id
    v.save
  end


end
