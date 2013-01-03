# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  username            :string(255)
#  pass                :string(255)
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
  # attr_accessible :title, :body
  has_many :fanportalrelationships, :dependent => :destroy #?  #destroy relationships when user is destroyed
  has_many :portals, through: :fanportalrelationships, source: :portal
  #          :counter_cache => true #portals can be anyname, e.g., myportals
  has_many :photos
  has_many :videos
  
  
  has_secure_password
  
  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token
  
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  
  
  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
  
end
