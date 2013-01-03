# == Schema Information
#
# Table name: fanportalrelationships
#
#  id         :integer          not null, primary key
#  portal_id  :integer
#  user_id    :integer
#  usertype   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Fanportalrelationship < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :user
  belongs_to :portal

  validates :user_id, presence: true
  validates :portal_id, presence: true
  
end
