# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150305161409) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "asset_disclosures", force: true do |t|
    t.string   "url"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "asset_disclosures", ["city_id"], name: "index_asset_disclosures_on_city_id", using: :btree

  create_table "budgets", force: true do |t|
    t.string   "url"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", force: true do |t|
    t.string   "uk_title"
    t.string   "lgs_link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ru_title"
    t.string   "en_title"
    t.integer  "region_id"
    t.string   "link"
    t.string   "asset_disclosure"
  end

  add_index "cities", ["region_id"], name: "index_cities_on_region_id", using: :btree

  create_table "data_migrations", force: true do |t|
    t.string "version"
  end

  create_table "regions", force: true do |t|
    t.string   "uk_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", force: true do |t|
    t.string   "url"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sites", ["city_id"], name: "index_sites_on_city_id", using: :btree

end
