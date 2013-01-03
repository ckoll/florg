# == Schema Information
#
# Table name: voiceresponses
#
#  id         :integer          not null, primary key
#  voice_id   :integer
#  answeredby :integer
#  answer     :integer
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class VoiceresponseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
