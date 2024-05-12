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

ActiveRecord::Schema[7.1].define(version: 2024_05_12_094741) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blacklist_items", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "domain"
    t.integer "time_limit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_blacklist_items_on_user_id"
  end

  create_table "days", force: :cascade do |t|
    t.bigint "tab_id", null: false
    t.integer "counter"
    t.date "date"
    t.integer "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url"
    t.index ["tab_id"], name: "index_days_on_tab_id"
  end

  create_table "tabs", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "url"
    t.integer "counter"
    t.integer "summary_time"
    t.string "favicon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tabs_on_user_id"
  end

  create_table "time_intervals", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.date "day"
    t.string "domain"
    t.text "intervals"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_time_intervals_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "blacklist_items", "users"
  add_foreign_key "days", "tabs"
  add_foreign_key "tabs", "users"
  add_foreign_key "time_intervals", "users"
end
