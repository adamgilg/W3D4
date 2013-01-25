class TagText < ActiveRecord::Base
#  VO - Why do you separate your tags and your tag text into separate tables?  
#  Maybe have them in the same table and have a join table if you want links 
#  to have many tags and tags to have many links. 

  has_many :tags
#this needs tag id, but tag also needs tagtext id
#confused.
  def self.create_tag(text)
    new_tag = TagText.new
    new_tag.
  end
end
