# == Schema Information
#
# Table name: qanswers
#
#  id          :integer          not null, primary key
#  question_id :integer
#  answeredby  :integer
#  answer      :integer
#  image       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class QanswerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
