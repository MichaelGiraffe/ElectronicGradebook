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

ActiveRecord::Schema[8.1].define(version: 2026_07_10_201208) do
  create_table "commission_members", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "email"
    t.integer "meeting_id", null: false
    t.string "name"
    t.string "phone"
    t.string "role"
    t.datetime "updated_at", null: false
    t.string "workplace"
    t.index ["meeting_id"], name: "index_commission_members_on_meeting_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.string "classroom"
    t.datetime "created_at", null: false
    t.date "defense_date"
    t.integer "members_id", null: false
    t.datetime "updated_at", null: false
    t.index ["members_id"], name: "index_meetings_on_members_id"
  end

  create_table "students", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "direction"
    t.string "education_form"
    t.string "group"
    t.string "name"
    t.string "profile"
    t.string "project_theme"
    t.integer "scientist_id", null: false
    t.datetime "updated_at", null: false
    t.index ["scientist_id"], name: "index_students_on_scientist_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "degree"
    t.string "name"
    t.string "position"
    t.string "title"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "commission_members", "meetings"
  add_foreign_key "meetings", "members", column: "members_id"
  add_foreign_key "students", "scientists"
end
