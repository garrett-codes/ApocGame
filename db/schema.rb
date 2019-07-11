# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_07_11_150008) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "intellect"
    t.integer "attack"
    t.integer "speed"
    t.integer "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_characters_on_team_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "character_id"
    t.string "task_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", default: "And so it begins..."
    t.string "situation", default: "We know you are new to this community. Let's first check if your head is in the right place. How do you \"kill\" a zombie?"
    t.string "correct", default: "Destroy the brain!"
    t.string "wrong", default: "Stab the heart!"
    t.string "result"
    t.integer "next1"
    t.integer "next2"
    t.boolean "consequence_of"
    t.integer "level", default: 1
    t.index ["character_id"], name: "index_tasks_on_character_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.boolean "win"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_teams_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
