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

ActiveRecord::Schema.define(version: 2020_02_25_111030) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "posts", force: :cascade do |t|
    t.string "name"
    t.integer "code"
    t.string "gtin_number"
    t.string "pack"
    t.string "pack_description"
    t.string "brand"
    t.string "brand_onwer"
    t.string "gpc_description"
    t.float "gross_weight"
    t.string "country_of_origin"
    t.boolean "kosher"
    t.string "child_nutrition"
    t.float "shipping_length"
    t.float "shipping_width"
    t.float "shipping_height"
    t.float "shipping_volumn"
    t.float "shelf_life"
    t.string "storage"
    t.integer "serving_size"
    t.integer "calories"
    t.float "fat"
    t.float "cholesterol"
    t.float "sodium"
    t.float "carbohydrate"
    t.float "protein"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
