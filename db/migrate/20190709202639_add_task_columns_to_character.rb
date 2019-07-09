class AddTaskColumnsToCharacter < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :completed_tasks, :integer, default: 0
    add_column :characters, :remaining_tasks, :integer, default: 5
  end
end
