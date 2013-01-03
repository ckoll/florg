# == Schema Information
#
# Table name: pollanswers
#
#  id              :integer          not null, primary key
#  pollquestion_id :integer
#  pollchoice_id   :integer
#  user_id         :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Pollanswer < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :question
  belongs_to :choice
end
