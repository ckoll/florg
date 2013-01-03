# == Schema Information
#
# Table name: heartrelationships
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  portal_id      :integer
#  heartable_id   :integer
#  heartable_type :string(255)
#  heartedid      :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class HeartrelationshipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
