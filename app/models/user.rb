class User < ApplicationRecord
	has_many :microposts
  #validates name, presence: true    # Replace FILL_IN with the right code.
  #validates email, presence: true    # Replace FILL_IN with the right code.
   before_save { email.downcase! }
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :email, presence: true, length: { maximum: 255 }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

end
