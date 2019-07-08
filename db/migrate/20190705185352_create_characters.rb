class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :intellect
      t.integer :attack
      t.integer :speed
      t.belongs_to :team, foreign_key: true
      t.timestamps
    end
  end
end
