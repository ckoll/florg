class Story < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :chapters
end