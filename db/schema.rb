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

ActiveRecord::Schema.define(version: 2021_08_24_165039) do

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "works", force: :cascade do |t|
    t.integer "user_id"
    t.integer "z_start"
    t.integer "z_end"
    t.integer "x_start"
    t.integer "x_end"
    t.integer "y_start"
    t.integer "y_end"
    t.integer "z_cube"
    t.integer "x_cube"
    t.integer "y_cube"
    t.float "r_amount"
    t.float "r_delay"
    t.float "r_time"
    t.float "xyz_scale_time"
    t.float "xyz_scale"
    t.float "xyz_scale_delay"
    t.float "xyz_position_time"
    t.float "xyz_position"
    t.float "xyz_position_delay"
    t.string "light_1"
    t.string "light_2"
    t.string "light_3"
    t.string "light_4"
    t.string "light_5"
    t.string "light_6"
    t.integer "x_camera_start"
    t.integer "y_camera_start"
    t.integer "z_camera_start"
    t.integer "x_camera_end"
    t.integer "y_camera_end"
    t.integer "z_camera_end"
    t.index ["user_id"], name: "index_works_on_user_id"
  end

  add_foreign_key "works", "users"
end
