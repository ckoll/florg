# == Schema Information
#
# Table name: voices
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  portal_id  :integer
#  question   :integer
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Voice < ActiveRecord::Base
  # attr_accessible :title, :body
  # attr_accessible :title, :body
  belongs_to :portal
  belongs_to :user
  has_many :voiceresponses
  
  validates :user_id, presence: true
  validates :portal_id, presence: true
  
end
