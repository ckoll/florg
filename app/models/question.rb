# == Schema Information
#
# Table name: questions
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  portal_id       :integer
#  question        :integer
#  image           :string(255)
#  accepted_answer :integer          default(0)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Question < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :portal
  belongs_to :user
  has_many :qanswers
  
  validates :user_id, presence: true
  validates :portal_id, presence: true
  

end
