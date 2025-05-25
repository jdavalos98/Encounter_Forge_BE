class CreateEncounters < ActiveRecord::Migration[7.2]
  def change
    create_table :encounters do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :total_xp
      t.string :difficulty_level

      t.timestamps
    end
  end
end
