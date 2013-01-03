# == Schema Information
#
# Table name: pagegroups
#
#  id         :integer          not null, primary key
#  portal_id  :integer
#  user_id    :string(255)
#  title      :string(255)
#  slug       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PagegroupTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
