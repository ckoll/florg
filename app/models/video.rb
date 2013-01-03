# == Schema Information
#
# Table name: videos
#
#  id          :integer          not null, primary key
#  filename    :string(255)
#  filepath    :string(255)
#  slug        :string(255)
#  uploadedby  :integer
#  portal_id   :integer
#  source      :integer
#  views       :integer
#  heart_count :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Video < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :portal
  belongs_to :user, :foreign_key => "uploadedby"
  
  validates :user_id, presence: true
  validates :portal_id, presence: true

  has_many :comments, :as => :commentable
end
