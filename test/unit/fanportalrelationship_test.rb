# == Schema Information
#
# Table name: fanportalrelationships
#
#  id         :integer          not null, primary key
#  portal_id  :integer
#  user_id    :integer
#  usertype   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class FanportalrelationshipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
