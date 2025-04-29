class CreateEncounterMonsters < ActiveRecord::Migration[7.2]
  def change
    create_table :encounter_monsters do |t|
      t.references :encounter, null: false, foreign_key: true
      t.references :monster, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
