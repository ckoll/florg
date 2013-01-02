class Comment < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :commentable, :polymorphic => true
  has_many :comments, :as => :commentable #comments have many comments
  #has_many :commentcomments
  
   #what can have comments: Photo, Video, Page, Portal (wall comments)
   #if it doesnt work later you can implement: Wallpost, wallcomment
end
