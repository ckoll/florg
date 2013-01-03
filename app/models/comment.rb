# == Schema Information
#
# Table name: comments
#
#  id               :integer          not null, primary key
#  body             :string(255)
#  user_id          :integer
#  portal_id        :integer
#  commentable_id   :integer
#  commentable_type :string(255)
#  emoticon         :integer
#  comment_count    :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Comment < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :commentable, :polymorphic => true
  has_many :comments, :as => :commentable #comments have many comments
  #has_many :commentcomments
  
   #what can have comments: Photo, Video, Page, Portal (wall comments)
   #if it doesnt work later you can implement: Wallpost, wallcomment
end
