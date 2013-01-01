class User < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :fanportalrelationships, :dependent => :destroy #?  #destroy relationships when user is destroyed
  has_many :portals, :through => fanportalrelationships,
              :source => portal, :counter_cache => true #portals can be anyname, e.g., myportals
  has_many :photos
  has_many :videos
end
