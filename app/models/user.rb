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

class User < ActiveRecord::Base
  attr_accessible :email, :password, :username, :profilepic
  has_many :fanportalrelationships, :dependent => :destroy #?  #destroy relationships when user is destroyed
  has_many :portals, through: :fanportalrelationships, source: :portal
  #          :counter_cache => true #portals can be anyname, e.g., myportals
  has_many :photos
  has_many :videos

  def isfan?(portal)
    fanportalrelationships.find_by_portal_id(portal.id)
  end

  def becomefan!(portal)
    fanportalrelationships.create!(portal_id: portal.id)
  end

  def unfan!(portal)
    fanportalrelationships.find_by_portal_id(portal.id).destroy
  end
  
  
  has_secure_password

  before_save { |user| user.email = email.downcase }
  before_save { |user| user.username = username.downcase }
  before_save :create_remember_token

  VALID_USERNAME_REGEX = /^(?:[a-z0-9]_?)*[a-z](?:_?[a-z0-9])*$/i
  validates :username, presence: true, length: { minimum: 3, maximum: 30 }, 
            format: { with: VALID_USERNAME_REGEX, :message => "is invalid.  Only letters, numbers, and underscore allowed"},
            uniqueness: { case_sensitive: false }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 5 }  
  

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
  
end
