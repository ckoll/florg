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
#  directory   :string(255)
#  popular     :string(255)
#

class Portal < ActiveRecord::Base
  attr_accessible :title, :slug, :founder, :directory, :popular

  has_many :fanportalrelationships, :dependent => :destroy #?  #destroy relationships when user is destroyed
  has_many :users, :through => :fanportalrelationships
  #   ,          :source => :user, :counter_cache => true #portals_count
              
  has_many :photos

  before_save :create_portal_slug


  def portal_slugpath
  	"/#{self.slug}"
  end

# be careful, only need to set 1x in lifetime, dont overwrite in testing
 def create_portal_slug
  title = self.title
    if self.slug.blank?
   	self.slug = title.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
   end
 end

 def increment_users_count
  Portal.increment!(:users_count, :id)
 end

 def decrement_users_count
  Portal.decrement!(:users_count, :id)
 end



  #unique title for now
  #validates :title, presence: true
  #slug is optional
  validates :slug, uniqueness: { case_sensitive: false }, :allow_blank => true

end
