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

ActiveRecord::Schema.define(version: 20140103072624) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colors", force: true do |t|
    t.string   "name"
    t.string   "hex"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jackets", force: true do |t|
    t.string   "name"
    t.datetime "last_worn"
    t.datetime "date_acquired"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "color_id"
    t.integer  "brand_id"
    t.integer  "type_id"
    t.string   "image"
  end

  add_index "jackets", ["brand_id"], name: "index_jackets_on_brand_id", using: :btree
  add_index "jackets", ["color_id"], name: "index_jackets_on_color_id", using: :btree
  add_index "jackets", ["type_id"], name: "index_jackets_on_type_id", using: :btree

  create_table "jackets_outfits", force: true do |t|
    t.integer "jacket_id"
    t.integer "outfit_id"
  end

  create_table "outfits", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "last_worn"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "outfits_pants", force: true do |t|
    t.integer "outfit_id"
    t.integer "pant_id"
  end

  create_table "outfits_shirts", force: true do |t|
    t.integer "outfit_id"
    t.integer "shirt_id"
  end

  create_table "outfits_ties", force: true do |t|
    t.integer "outfit_id"
    t.integer "tie_id"
  end

  create_table "pants", force: true do |t|
    t.string   "name"
    t.datetime "last_worn"
    t.datetime "date_acquired"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "color_id"
    t.integer  "brand_id"
    t.integer  "type_id"
    t.string   "image"
  end

  add_index "pants", ["brand_id"], name: "index_pants_on_brand_id", using: :btree
  add_index "pants", ["color_id"], name: "index_pants_on_color_id", using: :btree
  add_index "pants", ["type_id"], name: "index_pants_on_type_id", using: :btree

  create_table "shirts", force: true do |t|
    t.string   "name"
    t.datetime "last_worn"
    t.datetime "date_acquired"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "color_id"
    t.integer  "brand_id"
    t.integer  "type_id"
    t.string   "image"
  end

  add_index "shirts", ["brand_id"], name: "index_shirts_on_brand_id", using: :btree
  add_index "shirts", ["color_id"], name: "index_shirts_on_color_id", using: :btree
  add_index "shirts", ["type_id"], name: "index_shirts_on_type_id", using: :btree

  create_table "ties", force: true do |t|
    t.string   "name"
    t.datetime "last_worn"
    t.datetime "date_acquired"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "color_id"
    t.integer  "brand_id"
    t.integer  "type_id"
    t.string   "image"
  end

  add_index "ties", ["brand_id"], name: "index_ties_on_brand_id", using: :btree
  add_index "ties", ["color_id"], name: "index_ties_on_color_id", using: :btree
  add_index "ties", ["type_id"], name: "index_ties_on_type_id", using: :btree

  create_table "types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
