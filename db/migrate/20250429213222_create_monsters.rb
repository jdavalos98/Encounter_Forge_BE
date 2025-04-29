class CreateMonsters < ActiveRecord::Migration[7.2]
  def change
    create_table :monsters do |t|
      t.string :name
      t.float :challenge_rating
      t.integer :hit_points
      t.string :monster_type
      t.integer :xp
      t.boolean :custom
      t.references :created_by_user, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
