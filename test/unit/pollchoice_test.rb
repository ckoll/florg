# == Schema Information
#
# Table name: pollchoices
#
#  id                :integer          not null, primary key
#  pollquestion_id   :integer
#  choice            :string(255)
#  order             :integer
#  image             :string(255)
#  pollanswers_count :integer          default(0)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class PollchoiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
