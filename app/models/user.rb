class User < ActiveRecord::Base
  attr_reader :password
  before_validation :ensure_token
  before_validation :ensure_activation_token

  validates :username, :email, :token, :activation_token,
                   presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :password, :length => { minimum: 6, :allow_nil => true }
  #validates :activated, :inclusion => { [true, false] }
  #validate that activated starts false? no...

  has_many(
  :characters, :inverse_of => :creator,
  dependent: :destroy,
  class_name: "Character",
  foreign_key: :user_id,
  primary_key: :id
  )

  has_many(
    :stars, :inverse_of =>  :user,
    dependent: :destroy,
    class_name: "Star",
    foreign_key: :user_id,
    primary_key: :id
    )

    has_many(
    :starred_characters,
    through: :stars,
    source: :character)

    #method is used for for forked characters




  has_many(
  :comments, :inverse_of =>  :author,
  dependent: :destroy,
  class_name: "Comment",
  foreign_key: :author_id,
  primary_key: :id
  )

  has_many(
  :sent_messages,
  class_name: "Message",
  foreign_key: :sender_id,
  primary_key: :id
  )

  has_many(
  :received_messages,
  class_name: "Message",
  foreign_key: :sender_id,
  primary_key: :id
  )



  #has many forks through?



  def User.find_by_credentials(username, password)
    user = User.find_by_username(username)
    user.try(:is_password?, password) ? user : nil
  end

  def User.generate_token
    SecureRandom::urlsafe_base64(16)
  end

  def forked_characters
    forked_chars = []
        self.characters.each do |char|
          forked_chars << char if char.is_fork_duplicate?
        end
        return forked_chars
    end

  def has_already_forked_character?(character)
    return false if forked_characters.empty?

    self.forked_characters.each do |f_char|
      if f_char.try(:source_character) == character
        return true
      end
    end
  false

  end

  def has_already_starred_character?(character)

      if self.starred_characters.include?(character)
        return true
      end
      false
    end

  def reset_session_token!
    self.token = User.generate_token
    self.save!
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


  #not needed
  # def set_activation_token
#       self.activation_token = User.generate_token
#   end


  def activate!
    # find a better way to do this, other than update_attribute
    self.update_attribute(:activated, true)
  end



  private
  def ensure_token
    self.token ||= User.generate_token
  end

  def ensure_activation_token
    self.activation_token ||= User.generate_token
  end
end
