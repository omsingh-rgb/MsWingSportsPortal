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

ActiveRecord::Schema[7.0].define(version: 2023_05_15_141345) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cadets", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "cadet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "unit_id", null: false
    t.string "gender"
    t.index ["unit_id"], name: "index_cadets_on_unit_id"
  end

  create_table "e_types", force: :cascade do |t|
    t.string "name"
    t.integer "per_cadet_limit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.integer "max_entries"
    t.string "result_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "max_age"
    t.string "gender"
    t.bigint "e_type_id", null: false
    t.index ["e_type_id"], name: "index_events_on_e_type_id"
  end

  create_table "managers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "unit_id", null: false
    t.string "email"
    t.string "phone"
    t.index ["unit_id"], name: "index_managers_on_unit_id"
  end

  create_table "registrations", force: :cascade do |t|
    t.bigint "cadet_id", null: false
    t.bigint "event_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cadet_id"], name: "index_registrations_on_cadet_id"
    t.index ["event_id"], name: "index_registrations_on_event_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "unit_id", null: false
    t.index ["unit_id"], name: "index_users_on_unit_id"
  end

  add_foreign_key "cadets", "units"
  add_foreign_key "events", "e_types"
  add_foreign_key "managers", "units"
  add_foreign_key "registrations", "cadets"
  add_foreign_key "registrations", "events"
  add_foreign_key "users", "units"
end
