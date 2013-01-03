# == Schema Information
#
# Table name: newsposts
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  portal_id  :string(255)
#  title      :string(255)
#  slug       :string(255)
#  body       :string(255)
#  views      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Newspost < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :portal
  belongs_to :user
  
  validates :user_id, presence: true
  validates :portal_id, presence: true
  
end
