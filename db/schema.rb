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

ActiveRecord::Schema.define(version: 20170201045935) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "identifiers", force: :cascade do |t|
    t.string   "bioguide"
    t.string   "thomas"
    t.string   "lis"
    t.string   "govtrack"
    t.string   "opensecrets"
    t.string   "votesmart"
    t.string   "cspan"
    t.string   "fec1"
    t.string   "fec2"
    t.string   "wikipedia"
    t.string   "house_history"
    t.string   "ballotpedia"
    t.string   "maplight"
    t.string   "icpsr"
    t.string   "wikidata"
    t.string   "google_entity_id"
    t.integer  "official_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["official_id"], name: "index_identifiers_on_official_id", using: :btree
  end

  create_table "officials", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "full_name"
    t.datetime "birthday"
    t.string   "gender"
    t.string   "religion"
    t.string   "bioguide_id"
  end

  create_table "terms", force: :cascade do |t|
    t.string   "term_type"
    t.datetime "start"
    t.datetime "end"
    t.string   "state"
    t.integer  "district"
    t.string   "party"
    t.string   "term_class"
    t.string   "url"
    t.string   "address"
    t.string   "phone"
    t.string   "fax"
    t.string   "contact_form"
    t.string   "office"
    t.string   "state_rank"
    t.string   "rss_url"
    t.integer  "official_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "caucus"
    t.index ["official_id"], name: "index_terms_on_official_id", using: :btree
  end

end
