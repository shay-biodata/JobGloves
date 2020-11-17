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

ActiveRecord::Schema.define(version: 2020_11_17_065956) do

  create_table "histories", force: :cascade do |t|
    t.integer "user_id"
    t.string "controller"
    t.string "action"
    t.string "path"
    t.boolean "object_deleted", default: false
    t.string "object_changed_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_histories_on_user_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "requirments"
    t.boolean "available", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "employmenttype_id"
    t.integer "position_id"
    t.integer "user_id"
    t.integer "occupied_by_id"
    t.index ["employmenttype_id"], name: "index_jobs_on_employmenttype_id"
    t.index ["occupied_by_id"], name: "index_jobs_on_occupied_by_id"
    t.index ["position_id"], name: "index_jobs_on_position_id"
    t.index ["user_id"], name: "index_jobs_on_user_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "request_statuses", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "job_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "request_status_id", default: 3
    t.index ["job_id"], name: "index_requests_on_job_id"
    t.index ["request_status_id"], name: "index_requests_on_request_status_id"
    t.index ["user_id"], name: "index_requests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.boolean "employer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
