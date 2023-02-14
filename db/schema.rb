# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_11_021353) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "keys", force: :cascade do |t|
    t.string "mac"
    t.string "cut"
    t.string "page"
    t.string "reference"
    t.string "assigneeName"
    t.string "assigneeEmail"
    t.string "assigneePhone"
    t.text "details"
    t.date "assignmentDate"
    t.string "techName"
    t.string "techEmail"
    t.string "techPhone"
    t.text "notes"
    t.date "oDate"
    t.string "keyTitle"
    t.string "stamp"
    t.text "description"
    t.boolean "usable"
    t.boolean "inUse"
    t.boolean "reserved"
    t.boolean "archived"
    t.string "status"
    t.bigint "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_keys_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "mac"
    t.string "tmk"
    t.string "sop"
    t.string "kba"
    t.string "matrix"
    t.string "master"
    t.date "date"
    t.string "siteName"
    t.string "siteAddress"
    t.string "siteCity"
    t.string "siteState"
    t.string "siteZip"
    t.string "siteKeyway"
    t.text "siteDescription"
    t.text "siteNotes"
    t.string "contactName"
    t.string "contactPosition"
    t.string "contactEmail"
    t.string "contactPhone"
    t.string "contactDetails"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "keys", "projects"
  add_foreign_key "projects", "users"
end
