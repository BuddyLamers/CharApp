class User < ActiveRecord::Base
  attr_reader :password
  before_validation :ensure_token

  validates :username, :email, :token, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :password, :length => { minimum: 6 }



  def User.find_by_credentials(username, password)
    user = User.find_by_username(username)
    user.try(:is_password?, password) ? user : nil
  end

  def User.generate_token
    SecureRandom::urlsafe_base64(16)
  end

  def reset_session_token!
    self.token = User.generate_token
    self.save
    self.token
  end


  #will be run automatically with the other (username=) methods rails makes
  def password=(unencrypted_password)
    if unencrypted_password.present?
      @password = unencrypted_password
      self.password_digest = BCrypt::Password.create(unencrypted_password)
    end
  end

  def is_password?(unencrypted_password)
    BCrypt::Password.new(self.password_digest).is_password?(unencrypted_password)
  end

  def set_activation_token
      self.activation_token = User.generate_token
  end


  def activate!
    # find a better way to do this, other than update_attribute
    self.update_attribute(:activated, true)
  end



  private
  def ensure_token
    self.token ||= User.generate_token
  end
end
