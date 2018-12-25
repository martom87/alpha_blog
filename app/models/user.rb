class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: {case_sensitive: false},
            length: {maximum: 3, minimum: 25}
  EMAIL_IS_VALID_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 105},
            uniqueness: {case_sensitive: false}, format: {with: EMAIL_IS_VALID_REGEX}
end