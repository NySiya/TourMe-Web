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

ActiveRecord::Schema.define(version: 20180723082251) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name", default: ""
    t.text "description", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name", default: ""
    t.text "description", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "galleries", force: :cascade do |t|
    t.string "name", default: ""
    t.string "image", default: ""
    t.text "description", default: ""
    t.bigint "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_galleries_on_place_id"
  end

  create_table "place_categories", force: :cascade do |t|
    t.bigint "place_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_place_categories_on_category_id"
    t.index ["place_id"], name: "index_place_categories_on_place_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name", default: ""
    t.text "description", default: ""
    t.string "cover_image", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "country_id"
    t.index ["country_id"], name: "index_places_on_country_id"
  end

  add_foreign_key "galleries", "places"
  add_foreign_key "place_categories", "categories"
  add_foreign_key "place_categories", "places"
  add_foreign_key "places", "countries"
end
