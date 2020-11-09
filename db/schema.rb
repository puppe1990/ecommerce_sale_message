# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_09_155935) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "order_stores", force: :cascade do |t|
    t.float "value"
    t.string "status"
    t.datetime "order_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "simplo_orders", force: :cascade do |t|
    t.string "order_id"
    t.string "name"
    t.datetime "order_date"
    t.string "order_status"
    t.string "telephone"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "total_value"
    t.string "cep"
    t.string "tracking_object"
    t.float "total_freight"
    t.float "total_products"
    t.float "total_discount"
  end

end
