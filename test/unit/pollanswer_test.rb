# == Schema Information
#
# Table name: pollanswers
#
#  id              :integer          not null, primary key
#  pollquestion_id :integer
#  pollchoice_id   :integer
#  user_id         :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class PollanswerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
