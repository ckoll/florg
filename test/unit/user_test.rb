# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  username            :string(255)
#  password            :string(255)
#  password_digest     :string(255)
#  remember_token      :string(255)
#  email               :string(255)
#  confirmed           :boolean          default(FALSE)
#  lastvisit           :datetime
#  profilepic          :string(255)
#  profile             :string(255)
#  photos_count        :integer
#  videos_count        :integer
#  pages_count         :integer
#  comments_count      :integer
#  pollanswers_count   :integer
#  pollquestions_count :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
