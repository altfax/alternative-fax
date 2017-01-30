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

ActiveRecord::Schema.define(version: 20170130011147) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chambers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "representatives", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "title"
    t.string   "state"
    t.string   "party"
    t.string   "district"
    t.string   "phone"
    t.string   "email"
    t.string   "fax"
    t.integer  "chamber_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chamber_id"], name: "index_representatives_on_chamber_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "role"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
