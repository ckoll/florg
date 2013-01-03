# == Schema Information
#
# Table name: photos
#
#  id            :integer          not null, primary key
#  filename      :string(255)
#  filepath      :string(255)
#  slug          :string(255)
#  photoalbum_id :integer
#  uploadedby    :integer
#  portal_id     :integer
#  source        :integer
#  views         :integer
#  hearts_count  :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
