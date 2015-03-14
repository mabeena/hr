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

ActiveRecord::Schema.define(version: 20150209003116) do

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
    t.string   "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employee_trainings", force: true do |t|
    t.integer  "employee_id"
    t.integer  "training_id"
    t.date     "tdate"
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
    t.string   "level"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "employees", ["email"], name: "index_employees_on_email", unique: true
  add_index "employees", ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true

  create_table "evaluations", force: true do |t|
    t.date     "sdate"
    t.date     "edate"
    t.integer  "communication"
    t.integer  "attitude"
    t.integer  "character"
    t.integer  "potential"
    t.integer  "performance"
    t.integer  "employee_id"
    t.integer  "position_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "experiences", force: true do |t|
    t.string   "title"
    t.string   "company"
    t.date     "startdate"
    t.date     "enddate"
    t.string   "field"
    t.integer  "employee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "positions", force: true do |t|
    t.string   "name"
    t.string   "segment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", force: true do |t|
    t.string   "name"
    t.string   "level"
    t.string   "stype"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trainings", force: true do |t|
    t.string   "name"
    t.string   "ttype"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
