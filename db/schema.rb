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

ActiveRecord::Schema.define(version: 2021_08_08_163214) do

  create_table "patients", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.datetime "birth_date"
    t.integer "state_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["state_id"], name: "index_patients_on_state_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "drug_code"
    t.integer "quantity"
    t.integer "price"
    t.text "instructions"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "state_products", force: :cascade do |t|
    t.integer "state_id", null: false
    t.integer "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_state_products_on_product_id"
    t.index ["state_id"], name: "index_state_products_on_state_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "symbol"
    t.boolean "service_availability"
    t.integer "min_required_age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "patients", "states"
  add_foreign_key "state_products", "products"
  add_foreign_key "state_products", "states"
end
