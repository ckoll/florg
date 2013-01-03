# == Schema Information
#
# Table name: pollquestions
#
#  id         :integer          not null, primary key
#  question   :string(255)
#  user_id    :integer
#  portal_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PollquestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
