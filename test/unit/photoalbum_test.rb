# == Schema Information
#
# Table name: photoalbums
#
#  id           :integer          not null, primary key
#  portal_id    :integer
#  createdby    :string(255)
#  title        :string(255)
#  slug         :string(255)
#  description  :string(255)
#  photos_count :integer
#  order        :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class PhotoalbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
