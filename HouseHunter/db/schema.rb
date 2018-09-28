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

ActiveRecord::Schema.define(version: 2018_09_28_003521) do

  create_table "companies", force: :cascade do |t|
    t.text "name"
    t.text "website"
    t.text "address"
    t.text "founded"
    t.text "synopsis"
    t.text "revenue"
    t.text "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "houses", force: :cascade do |t|
    t.integer "company_id"
    t.string "location"
    t.integer "square_footage"
    t.integer "year_built"
    t.string "style"
    t.float "price_list"
    t.integer "number_of_floors"
    t.boolean "basement"
    t.string "current_owner"
    t.string "contact_info_realtor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_houses_on_company_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "user_name"
    t.text "password"
    t.text "email_address"
    t.text "first_name"
    t.text "last_name"
    t.text "middle_name"
    t.text "preferred_contact_method"
    t.text "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
