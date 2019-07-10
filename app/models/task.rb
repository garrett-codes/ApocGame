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

  def determine_path
    if next1 == nil || next2 == nil
      answer = self.correct == self.result
      next_task = Task.all.find {|task| task.level == self.level + 1 && task.consequence_of == answer && task.task_type == self.task_type}
      if next_task.consequence_of
        self.next1 = next_task.id
        self.save
      else
        self.next2 = next_task.id
        self.save
      end
    end
  end
end
