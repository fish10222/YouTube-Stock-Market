class User < ActiveRecord::Base
  has_many :video
  has_many :purchases, :class_name => 'Video', :foreign_key => 'uid'
  attr_accessor :remember_token
  before_save { self.email = email.downcase }     #seems to work for sign up when i uncommented this, not sure if google login is still working or not

  attr_accessor :skip_password_validation
  attr_accessor :skip_avatar_validation
  #Avatar Validation
  # validation for normal login
  has_attached_file :avatar, unless: :skip_avatar_validation
  # Validate content type
  validates :avatar, attachment_presence: true, unless: :skip_avatar_validation
  validates_attachment_content_type :avatar, content_type: /\Aimage/, unless: :skip_avatar_validation
  # Validate filename
  validates_attachment_file_name :avatar, matches: [/png\Z/, /jpe?g\Z/], unless: :skip_avatar_validation
NoMethodError

  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                      format: { with: VALID_EMAIL_REGEX },
                      uniqueness: { case_sensitive: false }
  has_secure_password if :normal_login?

  validates :password, presence: true, length: { minimum: 6 }, unless: :skip_password_validation if :normal_login?


  # Google login authentication
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.email = auth.info.email
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.password = Devise.friendly_token[0,20]
      user.skip_avatar_validation=true
      user.save!
    end
  end

  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  # Returns a random token.
  def User.new_token
    SecureRandom.urlsafe_base64
  end

  # Remembers a user in the database for use in persistent sessions.
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end

  # Returns true if the given token matches the digest.
  def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end

  # Forgets a user.
  def forget
    update_attribute(:remember_digest, nil)
  end

end
