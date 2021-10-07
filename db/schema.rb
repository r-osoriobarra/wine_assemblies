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

ActiveRecord::Schema.define(version: 2021_10_07_160639) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "blends", force: :cascade do |t|
    t.float "percent"
    t.bigint "wine_id"
    t.bigint "strain_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["strain_id"], name: "index_blends_on_strain_id"
    t.index ["wine_id"], name: "index_blends_on_wine_id"
  end

  create_table "enologist_magazines", force: :cascade do |t|
    t.boolean "editor"
    t.boolean "writer"
    t.boolean "reviewer"
    t.bigint "enologist_id"
    t.bigint "magazine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["enologist_id"], name: "index_enologist_magazines_on_enologist_id"
    t.index ["magazine_id"], name: "index_enologist_magazines_on_magazine_id"
  end

  create_table "enologists", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "nationality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluations", force: :cascade do |t|
    t.integer "score"
    t.bigint "wine_id"
    t.bigint "enologist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["enologist_id"], name: "index_evaluations_on_enologist_id"
    t.index ["wine_id"], name: "index_evaluations_on_wine_id"
  end

  create_table "magazines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "strains", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "score"
  end

  add_foreign_key "blends", "strains"
  add_foreign_key "blends", "wines"
  add_foreign_key "enologist_magazines", "enologists"
  add_foreign_key "enologist_magazines", "magazines"
  add_foreign_key "evaluations", "enologists"
  add_foreign_key "evaluations", "wines"
end
