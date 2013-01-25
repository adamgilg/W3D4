class Comment < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  belongs_to :link

  def self.make_comment(link, user)
    new_comment = Comment.new
    new_comment.user_id = user.id
    new_comment.link_id = link.id

    puts "Your comment?"
    print "> "
    new_comment.comment = gets.chomp

    new_comment.save
  end


end
