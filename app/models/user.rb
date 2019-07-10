class User < ApplicationRecord
  has_many :teams
  has_many :characters, through: :teams
  has_secure_password

  def wins
  	self.teams.select {|team| team.win}.count
  end

  def losses
  	self.teams.select {|team| !team.win}.count
  end
end
