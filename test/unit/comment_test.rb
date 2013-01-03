# == Schema Information
#
# Table name: comments
#
#  id               :integer          not null, primary key
#  body             :string(255)
#  user_id          :integer
#  portal_id        :integer
#  commentable_id   :integer
#  commentable_type :string(255)
#  emoticon         :integer
#  comment_count    :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
