class Photoalbum < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user,  :foreign_key => "createdby"
end
