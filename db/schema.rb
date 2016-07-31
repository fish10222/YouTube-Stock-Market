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

ActiveRecord::Schema.define(version: 20160731022538) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin"
    t.integer  "capital",             default: 100000
    t.string   "provider"
    t.string   "uid"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "purchases"
  end

  create_table "videos", force: :cascade do |t|
    t.string   "link"
    t.string   "title"
    t.datetime "published_at"
    t.integer  "likes"
    t.integer  "dislikes"
    t.integer  "dailyview"
    t.string   "uid"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "user_id"
    t.integer  "price",        default: 100
    t.string   "buyers"
  end

  add_index "videos", ["uid"], name: "index_videos_on_uid", using: :btree
  add_index "videos", ["user_id"], name: "index_videos_on_user_id", using: :btree

  add_foreign_key "videos", "users"
end
