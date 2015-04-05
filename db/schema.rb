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

ActiveRecord::Schema.define(version: 20150209003055) do

  create_table "educations", force: true do |t|
    t.string   "degree"
    t.string   "concentration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employee_educations", force: true do |t|
    t.integer  "employee_id"
    t.integer  "education_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employee_skills", force: true do |t|
    t.integer  "employee_id"
    t.integer  "skill_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
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
    t.string   "fname"
    t.string   "lname"
    t.integer  "position_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "employees", ["email"], name: "index_employees_on_email", unique: true
  add_index "employees", ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true

  create_table "evaluations", force: true do |t|
    t.float    "gScore"
    t.float    "qScore"
    t.float    "iScore"
    t.float    "rScore"
    t.float    "aScore"
    t.float    "mScore"
    t.float    "isScore"
    t.float    "owScore"
    t.float    "dScore"
    t.float    "oScore"
    t.float    "kScore"
    t.float    "pScore"
    t.float    "lScore"
    t.float    "evalScore"
    t.integer  "employee_id"
    t.integer  "rater_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "positions", force: true do |t|
    t.string   "name"
    t.string   "level"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", force: true do |t|
    t.string   "name"
    t.string   "stype"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
