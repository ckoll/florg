class Video < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :portal
  belongs_to :user, :foreign_key => "uploadedby"
  
  validates :user_id, presence: true
  validates :portal_id, presence: true

  has_many :comments, :as => :commentable
end
