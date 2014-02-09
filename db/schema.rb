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

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "data_sources", id: false, force: true do |t|
    t.string  "data_sources_id",  limit: 6, null: false
    t.text    "authors"
    t.text    "title",                 null: false
    t.integer "year"
    t.text    "journal"
    t.text    "vol_city"
    t.text    "issue_state"
    t.text    "start_page"
    t.text    "end_page"
  end

  create_table "data_source_links", id: false, force: true do |t|
    t.string "ndb_no",     limit: 5, null: false
    t.string "nutr_no",    limit: 3, null: false
    t.string "data_source_id", limit: 6, null: false
  end

  add_index "data_source_links", ["data_source_id"], name: "data_source_links_data_source_id_idx", using: :btree

  create_table "derivation_codes", id: false, force: true do |t|
    t.text "derivation_code",     null: false
    t.text "description", null: false
  end

  create_table "food_groups", id: false, force: true do |t|
    t.string "food_group_code",   limit: 4, null: false
    t.text   "description",           null: false
  end

  create_table "food_descriptions", id: false, force: true do |t|
    t.string  "ndb_no",      limit: 5, null: false
    t.string  "food_group_code",    limit: 4, null: false
    t.text    "long_description",             null: false
    t.text    "short_description",             null: false
    t.text    "common_name"
    t.text    "manufacturer_name"
    t.string  "survey",      limit: 1
    t.text    "refuse_description"
    t.integer "refuse"
    t.text    "scientific_name"
    t.float   "nitrogen_factor"
    t.float   "protein_factor"
    t.float   "fat_factor"
    t.float   "carbohydrate_factor"
  end

  add_index "food_descriptions", ["food_group_code"], name: "food_descriptions_food_group_code_idx", using: :btree

  create_table "footnotes", id: false, force: true do |t|
    t.string "ndb_no",     limit: 5, null: false
    t.string "footnt_no",  limit: 4, null: false
    t.string "footnt_typ", limit: 1, null: false
    t.string "nutr_no",    limit: 3
    t.text   "footnt_txt",           null: false
  end

  add_index "footnotes", ["ndb_no", "nutr_no"], name: "footnote_ndb_no_idx", using: :btree

  create_table "nutrition_data", id: false, force: true do |t|
    t.string  "ndb_no",        limit: 5, null: false
    t.string  "nutr_no",       limit: 3, null: false
    t.float   "nutrition_value",                null: false
    t.float   "num_data_pts",            null: false
    t.float   "std_error"
    t.integer "source_code",                  null: false
    t.text    "derivation_code"
    t.string  "ref_ndb_no",    limit: 5
    t.string  "add_nutr_mark", limit: 1
    t.integer "num_studies"
    t.float   "min"
    t.float   "max"
    t.integer "df"
    t.float   "low_eb"
    t.float   "up_eb"
    t.text    "stat_cmt"
    t.text    "addmod_date"
    t.string  "cc",            limit: 1
  end

  add_index "nutrition_data", ["derivation_code"], name: "nutrition_data_derivation_code_idx", using: :btree
  add_index "nutrition_data", ["nutr_no"], name: "nutrition_data_nutr_no_idx", using: :btree
  add_index "nutrition_data", ["source_code"], name: "nutrition_data_source_code_idx", using: :btree

  create_table "nutrient_definitions", id: false, force: true do |t|
    t.string  "nutr_no",  limit: 3, null: false
    t.text    "units",              null: false
    t.text    "tag_name"
    t.text    "nutrient_description"
    t.integer "num_dec",  limit: 2
    t.integer "sr_order"
  end

  create_table "source_codes", id: false, force: true do |t|
    t.integer "source_code",     null: false
    t.text    "description", null: false
  end

  create_table "weights", id: false, force: true do |t|
    t.string  "ndb_no",       limit: 5, null: false
    t.string  "seq",          limit: 2, null: false
    t.float   "amount",                 null: false
    t.text    "measure_description",              null: false
    t.float   "gram_weight",                 null: false
    t.integer "num_data_pts"
    t.float   "std_dev"
  end

end
