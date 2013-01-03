# == Schema Information
#
# Table name: chapters
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  portal_id    :integer
#  story_id     :integer
#  chapternum   :integer
#  body         :string(255)
#  title        :string(255)
#  hearts_count :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Chapter < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :story
end
