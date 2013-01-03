# == Schema Information
#
# Table name: portals
#
#  id          :integer          not null, primary key
#  founder     :integer          default(1)
#  datefounded :datetime
#  title       :string(255)
#  header      :string(255)
#  users_count :integer          default(0)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  slug        :string(255)
#

require 'test_helper'

class PortalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
