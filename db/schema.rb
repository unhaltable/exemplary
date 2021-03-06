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

ActiveRecord::Schema.define(version: 20140914093834) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer  "score"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "section_id"
    t.integer  "comment_id"
  end

  add_index "comments", ["comment_id"], name: "index_comments_on_comment_id", using: :btree
  add_index "comments", ["section_id"], name: "index_comments_on_section_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "courses", force: :cascade do |t|
    t.string   "coursecode"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "university_id"
    t.integer  "user_id"
  end

  add_index "courses", ["university_id"], name: "index_courses_on_university_id", using: :btree
  add_index "courses", ["user_id"], name: "index_courses_on_user_id", using: :btree

  create_table "documents", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "course_id"
    t.string   "attachment"
  end

  add_index "documents", ["course_id"], name: "index_documents_on_course_id", using: :btree
  add_index "documents", ["user_id"], name: "index_documents_on_user_id", using: :btree

  create_table "notes", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "course_id"
    t.integer  "user_id"
  end

  add_index "notes", ["course_id"], name: "index_notes_on_course_id", using: :btree
  add_index "notes", ["user_id"], name: "index_notes_on_user_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string "name"
  end

  create_table "roles_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "role_id", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "document_id"
  end

  add_index "sections", ["document_id"], name: "index_sections_on_document_id", using: :btree

  create_table "selections", force: :cascade do |t|
    t.integer  "x"
    t.integer  "y"
    t.integer  "x2"
    t.integer  "y2"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "section_id"
  end

  add_index "selections", ["section_id"], name: "index_selections_on_section_id", using: :btree

  create_table "universities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "abbreviation"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.integer  "university_id"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["university_id"], name: "index_users_on_university_id", using: :btree

  create_table "votes", force: :cascade do |t|
    t.boolean  "vote"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "comment_id"
  end

  add_index "votes", ["comment_id"], name: "index_votes_on_comment_id", using: :btree
  add_index "votes", ["user_id"], name: "index_votes_on_user_id", using: :btree

end
