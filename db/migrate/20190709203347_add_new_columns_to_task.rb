class AddNewColumnsToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :name, :string, default: "And so it begins..."
    add_column :tasks, :situation, :string
    add_column :tasks, :correct, :string
    add_column :tasks, :wrong, :string
    add_column :tasks, :result, :string
    add_column :tasks, :next1, :integer
    add_column :tasks, :next2, :integer
    add_column :tasks, :consequences, :string
  end
end
