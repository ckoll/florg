class Commentcomment < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :comment
end
