class User < ApplicationRecord
  has_many :teams
  has_many :characters, through: :teams
  has_secure_password
end
