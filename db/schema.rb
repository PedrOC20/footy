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

ActiveRecord::Schema.define(version: 2019_09_11_152217) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chat_rooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fields", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.text "description"
    t.integer "field_size"
    t.string "field_type"
    t.boolean "locker_room"
    t.boolean "indoor"
    t.boolean "parking"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.string "photo"
    t.index ["user_id"], name: "index_fields_on_user_id"
  end

  create_table "group_members", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "group_id"
    t.integer "field_review_rating"
    t.text "field_review_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_group_members_on_group_id"
    t.index ["user_id"], name: "index_group_members_on_user_id"
  end

  create_table "groups", force: :cascade do |t|
    t.date "date"
    t.time "start_time"
    t.time "end_time"
    t.integer "min_members"
    t.integer "max_members"
    t.integer "status"
    t.integer "price"
    t.bigint "field_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "chat_room_id"
    t.index ["chat_room_id"], name: "index_groups_on_chat_room_id"
    t.index ["field_id"], name: "index_groups_on_field_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.bigint "group_member_id"
    t.bigint "chat_room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "read", default: false
    t.index ["chat_room_id"], name: "index_messages_on_chat_room_id"
    t.index ["group_member_id"], name: "index_messages_on_group_member_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.date "birth_date"
    t.integer "role", default: 0
    t.string "avatar"
    t.string "position"
    t.string "foot"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "fields", "users"
  add_foreign_key "group_members", "groups"
  add_foreign_key "group_members", "users"
  add_foreign_key "groups", "chat_rooms"
  add_foreign_key "groups", "fields"
  add_foreign_key "messages", "chat_rooms"
  add_foreign_key "messages", "group_members"
end
