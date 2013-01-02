class Heartrelationship < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :heartable, :polymorphic => true
 
  belongs_to :user
  belongs_to :portal

  validates :user_id, presence: true
  validates :portal_id, presence: true
  
  #heartable_type (anything that can be hearted)
  
end
