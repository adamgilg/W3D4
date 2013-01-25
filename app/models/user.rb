
class User < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :comments
  has_many :visits

  def self.set_user(name)
    new_user = User.new
    new_user.username  = name
    new_user.save
    new_user
  end

  def visit(link)
    Visit.visit_link(link, self)
    Launchy.open(link.url_long)
  end
end
