class AddBeginFieldToTask < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :begin, :boolean, default: false
  end
end
