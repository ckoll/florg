class Portal < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :fanportalrelationships, :dependent => :destroy #?  #destroy relationships when user is destroyed
  has_many :users, :through => :fanportalrelationships,
              :source => :user, :counter_cache => true #portals_count
              
  has_many :photos
end
