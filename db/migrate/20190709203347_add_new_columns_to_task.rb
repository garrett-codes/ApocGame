class AddNewColumnsToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :name, :string, default: "And so it begins..."
    add_column :tasks, :situation, :string
    add_column :tasks, :correct, :string, default: "Destroy the brain!"
    add_column :tasks, :wrong, :string, default: "Stab the heart!"
    add_column :tasks, :result, :string
    add_column :tasks, :next1, :integer
    add_column :tasks, :next2, :integer
    add_column :tasks, :consequence_of, :boolean
    add_column :tasks, :level, :integer, default: 1
  end
end
