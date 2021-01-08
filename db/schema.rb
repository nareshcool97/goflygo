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

ActiveRecord::Schema.define(version: 2021_01_08_101952) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airports", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "flight_id", null: false
    t.integer "price"
    t.bigint "user_id", null: false
    t.string "name"
    t.integer "no_of_seats"
    t.integer "total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flight_id"], name: "index_bookings_on_flight_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "flights", force: :cascade do |t|
    t.bigint "plane_id", null: false
    t.integer "from_id"
    t.integer "to_id"
    t.string "available_pnrs"
    t.string "booked_pnrs"
    t.string "flight_no"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "status"
    t.datetime "flight_date"
    t.index ["plane_id"], name: "index_flights_on_plane_id"
  end

  create_table "planes", force: :cascade do |t|
    t.string "plane_type"
    t.string "name"
    t.string "model"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "planes_seat_configs", id: false, force: :cascade do |t|
    t.bigint "plane_id"
    t.bigint "seat_config_id"
    t.index ["plane_id"], name: "index_planes_seat_configs_on_plane_id"
    t.index ["seat_config_id"], name: "index_planes_seat_configs_on_seat_config_id"
  end

  create_table "seat_configs", force: :cascade do |t|
    t.bigint "category_id", null: false
    t.integer "seats_per_row"
    t.integer "no_of_rows"
    t.integer "exceptions"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_seat_configs_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.boolean "passenger", default: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "flights"
  add_foreign_key "bookings", "users"
  add_foreign_key "flights", "planes"
  add_foreign_key "seat_configs", "categories"
end
