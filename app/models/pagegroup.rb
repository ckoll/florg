# == Schema Information
#
# Table name: pagegroups
#
#  id         :integer          not null, primary key
#  portal_id  :integer
#  user_id    :string(255)
#  title      :string(255)
#  slug       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Pagegroup < ActiveRecord::Base
  # attr_accessible :title, :body
    belongs_to :user
end
