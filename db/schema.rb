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

ActiveRecord::Schema.define(version: 20151021011543) do

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",               limit: 255, default: "", null: false
    t.string   "encrypted_password",  limit: 255, default: "", null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",  limit: 255
    t.string   "last_sign_in_ip",     limit: 255
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree

  create_table "applicants", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "kana",       limit: 255
    t.string   "sex",        limit: 255
    t.string   "age",        limit: 255
    t.string   "tel",        limit: 255
    t.string   "email",      limit: 255
    t.string   "address",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.datetime "deleted_at"
  end

  create_table "articles", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "text",       limit: 65535
    t.string   "author",     limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.datetime "deleted_at"
  end

  create_table "articles_tags", force: :cascade do |t|
    t.integer  "article_id", limit: 4
    t.integer  "tag_id",     limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.datetime "deleted_at"
  end

  add_index "articles_tags", ["article_id"], name: "index_articles_tags_on_article_id", using: :btree
  add_index "articles_tags", ["tag_id"], name: "index_articles_tags_on_tag_id", using: :btree

  create_table "clients", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "url",        limit: 255
    t.string   "address",    limit: 255
    t.string   "tel",        limit: 255
    t.string   "banner_url", limit: 255
    t.string   "email",      limit: 255
    t.integer  "commition",  limit: 4
    t.string   "condition",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.datetime "deleted_at"
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.datetime "deleted_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "articles_tags", "articles"
  add_foreign_key "articles_tags", "tags"
end
