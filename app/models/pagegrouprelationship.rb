# == Schema Information
#
# Table name: pagegrouprelationships
#
#  id           :integer          not null, primary key
#  page_id      :integer
#  pagegroup_id :integer
#  pageorder    :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Pagegrouprelationship < ActiveRecord::Base
  # attr_accessible :title, :body
end
