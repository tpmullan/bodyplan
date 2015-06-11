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

ActiveRecord::Schema.define(version: 20150609035718) do

  create_table "identities", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "accesstoken"
    t.string   "refreshtoken"
    t.string   "uid"
    t.string   "name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "nickname"
    t.string   "image"
    t.string   "phone"
    t.string   "urls"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id"

  create_table "programs", force: :cascade do |t|
    t.integer  "trainer_id"
    t.string   "name"
    t.decimal  "rating",                      default: 5.0
    t.string   "overview_video_file_name"
    t.string   "overview_video_content_type"
    t.integer  "overview_video_file_size"
    t.datetime "overview_video_updated_at"
    t.text     "overview_text"
    t.string   "cover_photo_file_name"
    t.string   "cover_photo_content_type"
    t.integer  "cover_photo_file_size"
    t.datetime "cover_photo_updated_at"
    t.decimal  "price"
    t.string   "difficulty"
    t.string   "equipment_required"
    t.integer  "session_intervals"
    t.boolean  "trending",                    default: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.integer  "star5"
    t.integer  "star4"
    t.integer  "star3"
    t.integer  "star2"
    t.integer  "star1"
    t.decimal  "star5percent"
    t.decimal  "star4percent"
    t.decimal  "star3percent"
    t.decimal  "star2percent"
    t.decimal  "star1percent"
  end

  add_index "programs", ["trainer_id"], name: "index_programs_on_trainer_id"

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "program_id"
    t.text     "body"
    t.integer  "rating"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["program_id"], name: "index_reviews_on_program_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "subscriptions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "subscriptions", ["program_id"], name: "index_subscriptions_on_program_id"
  add_index "subscriptions", ["user_id"], name: "index_subscriptions_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                    default: "", null: false
    t.string   "encrypted_password",       default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",            default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",          default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_type",                default: 2
    t.string   "first_name"
    t.string   "last_name"
    t.text     "bio"
    t.string   "phone"
    t.string   "website"
    t.string   "sex"
    t.string   "goal"
    t.integer  "ideal_session"
    t.string   "ideal_body_type"
    t.string   "fitness_level"
    t.string   "equipment_access"
    t.string   "profile_pic_file_name"
    t.string   "profile_pic_content_type"
    t.integer  "profile_pic_file_size"
    t.datetime "profile_pic_updated_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true

end
