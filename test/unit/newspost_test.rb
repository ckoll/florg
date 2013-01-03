# == Schema Information
#
# Table name: newsposts
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  portal_id  :string(255)
#  title      :string(255)
#  slug       :string(255)
#  body       :string(255)
#  views      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class NewspostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
