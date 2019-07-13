class User < ActiveRecod::Base

    has_many :articles

    before_save {self.email = email.downcase}

    validate :username, presence: true, uniqueness: { case_sensitive: false } ,lenght: {minimum: 3, maximum: 25}    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validate :email, presence: true, uniqueness: { case_sensitive: false }, lenght: {maximum: 105}, format: { width: VALID_EMAIL_REGEX }

    has_secure_password

end