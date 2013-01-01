class Pollanswer < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :question
  belongs_to :choice
end
