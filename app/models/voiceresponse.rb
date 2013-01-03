# == Schema Information
#
# Table name: voiceresponses
#
#  id         :integer          not null, primary key
#  voice_id   :integer
#  answeredby :integer
#  answer     :integer
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Voiceresponse < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :portal
  belongs_to :user
  
  validates :user_id, presence: true
  validates :portal_id, presence: true
  
  belongs_to :voice
  validates :voice_id, presence: true
  
end
