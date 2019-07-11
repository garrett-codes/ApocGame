class ChangeTaskSituationColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :tasks, :situation, :string, default: "We know you are new to this community. Let's first check if your head is in the right place. How do you \"kill\" a zombie?"
  end
end
