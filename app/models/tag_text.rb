class TagText < ActiveRecord::Base

  has_many :tags
#this needs tag id, but tag also needs tagtext id
#confused.
  def self.create_tag(text)
    new_tag = TagText.new
    new_tag.
  end
end