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

ActiveRecord::Schema.define(version: 20140116225056) do

  create_table "answers", force: true do |t|
    t.integer "query_id"
    t.string  "answer"
    t.integer "votes"
  end

  create_table "queries", force: true do |t|
    t.text    "question"
    t.integer "user_id"
    t.integer "yea"
    t.integer "nay"
  end

  create_table "query_users", id: false, force: true do |t|
    t.integer "query_id", null: false
    t.integer "user_id",  null: false
  end

  add_index "query_users", ["query_id"], name: "index_query_users_on_query_id"
  add_index "query_users", ["user_id"], name: "index_query_users_on_user_id"

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
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "visitors", force: true do |t|
    t.string  "ip"
    t.integer "visits"
    t.integer "page_views"
    t.integer "cake"
  end

end
