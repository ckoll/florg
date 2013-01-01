class Qanswer < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :portal
  belongs_to :user
  
  validates :user_id, presence: true
  validates :portal_id, presence: true
  
  belongs_to :question
  validates :question_id, presence: true
  
end
