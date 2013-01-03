# == Schema Information
#
# Table name: heartrelationships
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  portal_id      :integer
#  heartable_id   :integer
#  heartable_type :string(255)
#  heartedid      :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Heartrelationship < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :heartable, :polymorphic => true
 
  belongs_to :user
  belongs_to :portal

  validates :user_id, presence: true
  validates :portal_id, presence: true
  
  #heartable_type (anything that can be hearted)
  
end
