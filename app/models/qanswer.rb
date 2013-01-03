# == Schema Information
#
# Table name: qanswers
#
#  id          :integer          not null, primary key
#  question_id :integer
#  answeredby  :integer
#  answer      :integer
#  image       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Qanswer < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :portal
  belongs_to :user
  
  validates :user_id, presence: true
  validates :portal_id, presence: true
  
  belongs_to :question
  validates :question_id, presence: true
  
end
