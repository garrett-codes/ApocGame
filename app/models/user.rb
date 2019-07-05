class User < ApplicationRecord
  has_many :characters
  has_many :teams, through: :characters
end
