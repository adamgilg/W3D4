class Tag < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :link
  belongs_to :tag_text


end
