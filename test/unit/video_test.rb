# == Schema Information
#
# Table name: videos
#
#  id          :integer          not null, primary key
#  filename    :string(255)
#  filepath    :string(255)
#  slug        :string(255)
#  uploadedby  :integer
#  portal_id   :integer
#  source      :integer
#  views       :integer
#  heart_count :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class VideoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
