class Question < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :portal
  belongs_to :user
  has_many :qanswers
  
  validates :user_id, presence: true
  validates :portal_id, presence: true
  

end
