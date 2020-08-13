class User < ApplicationRecord
  # has_many :connections
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
