class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.references :character, foreign_key: true
      t.string :task_type
      t.timestamps
    end
  end
end
