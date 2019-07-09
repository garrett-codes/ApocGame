class AddNewColumnsToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :name, :string, default: "And so it begins..."
    add_column :tasks, :situation, :string
    add_column :tasks, :choice1, :string
    add_column :tasks, :choice2, :string
    add_column :tasks, :result1, :string
    add_column :tasks, :result2, :string
    add_column :tasks, :next1, :id
    add_column :tasks, :next2, :id
  end
end
