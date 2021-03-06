class User < ActiveRecord::Base
<<<<<<< HEAD
      has_many :points  
      has_many :badges , :through => :levels 
      has_many :levels  
  attr_accessible :name, :email, :password, :password_confirmation
=======
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation
>>>>>>> framework-outline
  has_secure_password

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
