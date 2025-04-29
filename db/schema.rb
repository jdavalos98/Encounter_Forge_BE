# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2025_04_29_213228) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "encounter_monsters", force: :cascade do |t|
    t.bigint "encounter_id", null: false
    t.bigint "monster_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["encounter_id"], name: "index_encounter_monsters_on_encounter_id"
    t.index ["monster_id"], name: "index_encounter_monsters_on_monster_id"
  end

  create_table "encounters", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.integer "total_xp"
    t.string "difficulty_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_encounters_on_user_id"
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.float "challenge_rating"
    t.integer "hit_points"
    t.string "monster_type"
    t.integer "xp"
    t.boolean "custom"
    t.bigint "created_by_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["created_by_user_id"], name: "index_monsters_on_created_by_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "encounter_monsters", "encounters"
  add_foreign_key "encounter_monsters", "monsters"
  add_foreign_key "encounters", "users"
  add_foreign_key "monsters", "users", column: "created_by_user_id"
end
