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

ActiveRecord::Schema.define(version: 20150625114617) do

  create_table "clients", id: false, force: true do |t|
    t.uuid     "id",                               null: false
    t.uuid     "user_id",                          null: false
    t.string   "device_id",            limit: nil
    t.string   "device_name",          limit: nil
    t.string   "model",                limit: nil
    t.string   "platform",             limit: nil
    t.string   "os_version",           limit: nil
    t.string   "first_os_version",     limit: nil
    t.string   "app_id",               limit: nil
    t.string   "app_version",          limit: nil
    t.datetime "last_sign_in_at"
    t.string   "authentication_token", limit: nil
    t.datetime "last_received_at"
    t.datetime "last_sent_at"
    t.string   "last_ip",              limit: nil
    t.string   "manufacturer",         limit: nil
    t.string   "mp_device_model",      limit: nil
    t.string   "os",                   limit: nil
    t.string   "screen_height",        limit: nil
    t.string   "screen_width",         limit: nil
    t.string   "app_shortcode",        limit: nil
    t.string   "app_dbversion",        limit: nil
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "followers", force: true do |t|
    t.integer  "follow_id"
    t.integer  "follower_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stars", force: true do |t|
    t.text     "stars_comment"
    t.string   "stars_amount",  limit: nil
    t.string   "user_id",       limit: nil
    t.string   "tour_id",       limit: nil
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stops", force: true do |t|
    t.string   "cover_photo_file_name",    limit: nil
    t.string   "cover_photo_content_type", limit: nil
    t.integer  "cover_photo_file_size"
    t.datetime "cover_photo_updated_at"
    t.string   "stop_title",               limit: nil
    t.text     "stop_description"
    t.string   "tour_id",                  limit: nil
    t.float    "longitude"
    t.float    "lattitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tour_reviews", id: false, force: true do |t|
    t.uuid     "id",            null: false
    t.text     "comment"
    t.integer  "hearts_amount"
    t.integer  "tour_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tours", id: false, force: true do |t|
    t.uuid     "id",                               null: false
    t.string   "title",                limit: nil
    t.string   "cover_image",          limit: nil
    t.string   "description",          limit: nil
    t.uuid     "category_id",                      null: false
    t.string   "tour_code",            limit: nil
    t.string   "group_credit_amount",  limit: nil
    t.string   "group_credit_people",  limit: nil
    t.string   "single_credit_amount", limit: nil
    t.string   "qr_code",              limit: nil
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", id: false, force: true do |t|
    t.uuid     "id",                                                    null: false
    t.string   "email",                        limit: nil, default: "", null: false
    t.string   "encrypted_password",           limit: nil, default: "", null: false
    t.string   "reset_password_token",         limit: nil
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                            default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",           limit: nil
    t.string   "last_sign_in_ip",              limit: nil
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "authentication_token",         limit: nil
    t.string   "first_name",                   limit: nil
    t.string   "last_name",                    limit: nil
    t.string   "profile_picture_file_name",    limit: nil
    t.string   "profile_picture_content_type", limit: nil
    t.integer  "profile_picture_file_size"
    t.datetime "profile_picture_updated_at"
    t.string   "company_name",                 limit: nil
    t.text     "company_description"
    t.float    "latitude"
    t.float    "longitude"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
