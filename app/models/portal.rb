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

class Portal < ActiveRecord::Base
  attr_accessible :title, :slug, :founder

  has_many :fanportalrelationships, :dependent => :destroy #?  #destroy relationships when user is destroyed
  has_many :users, :through => :fanportalrelationships
  #   ,          :source => :user, :counter_cache => true #portals_count
              
  has_many :photos
end
