# == Schema Information
#
# Table name: voices
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  portal_id  :integer
#  question   :integer
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class VoiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
