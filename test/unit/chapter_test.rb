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

require 'test_helper'

class ChapterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
