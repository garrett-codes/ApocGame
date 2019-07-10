class Task < ApplicationRecord
  belongs_to :character
  has_one :team, through: :character
  has_one :user, through: :team

  def top_stat
  	stat_arr = []
  	stat_arr << self.character.attack
  	stat_arr << self.character.speed
  	stat_arr << self.character.intellect
  	max = stat_arr.max
  	case max 
    when self.character.attack
      return "attack"
    when self.character.speed
      return "speed"
    when self.character.intellect
      return "intellect"
    else
      return nil
    end
  end

  def 
  end
end
