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

ActiveRecord::Schema.define(version: 20140423181053) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "character_details", force: true do |t|
    t.integer  "character_id"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "character_details", ["character_id"], name: "index_character_details_on_character_id", using: :btree

  create_table "characters", force: true do |t|
    t.string   "name"
    t.string   "tagline"
    t.boolean  "private",    default: false
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "characters", ["name"], name: "index_characters_on_name", using: :btree
  add_index "characters", ["user_id"], name: "index_characters_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "activated",        default: false
    t.string   "activation_token"
  end

  add_index "users", ["password_digest"], name: "index_users_on_password_digest", using: :btree
  add_index "users", ["token"], name: "index_users_on_token", using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
