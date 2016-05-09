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

ActiveRecord::Schema.define(version: 20160508233236) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drinkeries", force: :cascade do |t|
    t.string   "name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.integer  "phone"
    t.string   "website"
    t.integer  "open_hour"
    t.integer  "close_hour"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "happy_hours", force: :cascade do |t|
    t.integer  "drinkery_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.text     "deal"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "image_url"
    t.integer  "drinkery_id"
    t.integer  "user_id"
    t.text     "caption"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
