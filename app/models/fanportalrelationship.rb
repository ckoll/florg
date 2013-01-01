class Fanportalrelationship < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :user
  belongs_to :portal

  validates :user_id, presence: true
  validates :portal_id, presence: true
  
end
