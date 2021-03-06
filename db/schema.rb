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

ActiveRecord::Schema.define(version: 20160914101437) do

  create_table "admin_users", force: :cascade do |t|
    t.string   "first_name",  limit: 40
    t.string   "second_name", limit: 40
    t.string   "password",    limit: 40
    t.string   "email",       limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username",    limit: 25
  end

  create_table "african_names", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "meaning",      limit: 255
    t.integer  "attribute_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "african_names", ["attribute_id"], name: "index_african_names_on_attribute_id", using: :btree

  create_table "african_names_attributes", id: false, force: :cascade do |t|
    t.integer "african_name_id", limit: 4
    t.integer "attribute_id",    limit: 4
  end

  create_table "attributes", force: :cascade do |t|
    t.string   "virtue",     limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "attributes", ["user_id"], name: "index_attributes_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name",  limit: 255
    t.string   "Second_name", limit: 255
    t.string   "last_name",   limit: 255
    t.string   "email",       limit: 255
    t.string   "password",    limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_foreign_key "african_names", "attributes"
  add_foreign_key "attributes", "users"
end
