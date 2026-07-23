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

ActiveRecord::Schema[8.1].define(version: 2026_07_23_113309) do
  create_table "cafedras", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

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

  create_table "completes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "percent"
    t.integer "student_id", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_completes_on_student_id"
  end

  create_table "conf_members", force: :cascade do |t|
    t.integer "conf_role_id", null: false
    t.integer "conference_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["conf_role_id"], name: "index_conf_members_on_conf_role_id"
    t.index ["conference_id"], name: "index_conf_members_on_conference_id"
    t.index ["user_id"], name: "index_conf_members_on_user_id"
  end

  create_table "conf_roles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "role"
    t.datetime "updated_at", null: false
  end

  create_table "conferences", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "date"
    t.string "room"
    t.datetime "updated_at", null: false
  end

  create_table "grades", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "grade"
    t.boolean "honors"
    t.integer "student_id", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_grades_on_student_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.string "classroom"
    t.datetime "created_at", null: false
    t.date "defense_date"
    t.integer "members_id", null: false
    t.datetime "updated_at", null: false
    t.index ["members_id"], name: "index_meetings_on_members_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "answer"
    t.integer "conf_member_id", null: false
    t.datetime "created_at", null: false
    t.text "question"
    t.integer "student_id", null: false
    t.datetime "updated_at", null: false
    t.index ["conf_member_id"], name: "index_questions_on_conf_member_id"
    t.index ["student_id"], name: "index_questions_on_student_id"
  end

  create_table "roles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "role"
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "code"
    t.integer "consultant_id"
    t.datetime "created_at", null: false
    t.string "first_name"
    t.string "group"
    t.string "last_name"
    t.string "patronymic"
    t.string "profile"
    t.string "qualification"
    t.string "student_num"
    t.string "study_form"
    t.integer "thread"
    t.datetime "updated_at", null: false
    t.integer "voevoda_id", null: false
    t.index ["consultant_id"], name: "index_students_on_consultant_id"
    t.index ["voevoda_id"], name: "index_students_on_voevoda_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "degree"
    t.string "name"
    t.string "position"
    t.string "title"
    t.datetime "updated_at", null: false
  end

  create_table "themes", force: :cascade do |t|
    t.integer "addpages"
    t.datetime "created_at", null: false
    t.text "description"
    t.integer "student_id", null: false
    t.string "theme"
    t.datetime "updated_at", null: false
    t.integer "workpages"
    t.index ["student_id"], name: "index_themes_on_student_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "about"
    t.datetime "created_at", null: false
    t.string "email", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
    t.string "patronymic"
    t.integer "role_id", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  create_table "voevodas", force: :cascade do |t|
    t.integer "cafedra_id", null: false
    t.datetime "created_at", null: false
    t.string "degree"
    t.string "fio"
    t.datetime "updated_at", null: false
    t.index ["cafedra_id"], name: "index_voevodas_on_cafedra_id"
  end

  add_foreign_key "commission_members", "meetings"
  add_foreign_key "completes", "students"
  add_foreign_key "conf_members", "conf_roles"
  add_foreign_key "conf_members", "conferences"
  add_foreign_key "conf_members", "users"
  add_foreign_key "grades", "students"
  add_foreign_key "meetings", "members", column: "members_id"
  add_foreign_key "questions", "conf_members"
  add_foreign_key "questions", "students"
  add_foreign_key "students", "voevodas"
  add_foreign_key "students", "voevodas", column: "consultant_id"
  add_foreign_key "themes", "students"
  add_foreign_key "users", "roles"
  add_foreign_key "voevodas", "cafedras"
end
