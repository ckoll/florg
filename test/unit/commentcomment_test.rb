# == Schema Information
#
# Table name: commentcomments
#
#  id         :integer          not null, primary key
#  comment_id :integer
#  body       :string(255)
#  user_id    :integer
#  portal_id  :integer
#  emoticon   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class CommentcommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
