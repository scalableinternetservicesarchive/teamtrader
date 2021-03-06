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

ActiveRecord::Schema.define(version: 20151205011901) do

  create_table "indices", force: :cascade do |t|
    t.string   "symbol"
    t.string   "name"
    t.string   "market_cap"
    t.string   "ipo_year"
    t.string   "sector"
    t.string   "industry"
    t.string   "link"
    t.string   "exchange"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "indices", ["symbol"], name: "index_indices_on_symbol"

  create_table "investments", force: :cascade do |t|
    t.string   "stockName"
    t.string   "ticker"
    t.integer  "quantity"
    t.float    "buyingPrice"
    t.date     "buyingDate"
    t.float    "livePrice"
    t.float    "totalInvestments"
    t.float    "totalValue"
    t.float    "overallGain"
    t.float    "overallGainPercent"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
  end

  add_index "investments", ["user_id"], name: "index_investments_on_user_id"

  create_table "stock_search_histories", force: :cascade do |t|
    t.string   "stock"
    t.integer  "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "stock_search_histories", ["count"], name: "index_stock_search_histories_on_count"
  add_index "stock_search_histories", ["stock"], name: "index_stock_search_histories_on_stock", unique: true

  create_table "term_search_histories", force: :cascade do |t|
    t.string   "term"
    t.integer  "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "term_search_histories", ["count"], name: "index_term_search_histories_on_count"
  add_index "term_search_histories", ["term"], name: "index_term_search_histories_on_term", unique: true

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
