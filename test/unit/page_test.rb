# == Schema Information
#
# Table name: pages
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  portal_id    :string(255)
#  title        :string(255)
#  slug         :string(255)
#  body         :string(255)
#  pagegroup_id :integer          default(0)
#  parentpage   :integer          default(0)
#  views        :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class PageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
