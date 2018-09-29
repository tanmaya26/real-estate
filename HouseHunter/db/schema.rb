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

ActiveRecord::Schema.define(version: 2018_09_29_053526) do

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

  create_table "company_house_mappings", force: :cascade do |t|
    t.integer "company_id"
    t.integer "house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_house_mappings_on_company_id"
    t.index ["house_id"], name: "index_company_house_mappings_on_house_id"
  end

  create_table "house_realtors", force: :cascade do |t|
    t.integer "house_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_house_realtors_on_house_id"
    t.index ["user_id"], name: "index_house_realtors_on_user_id"
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
    t.string "user_name"
    t.string "password"
    t.string "email_address"
    t.string "first_name"
    t.string "last_name"
    t.string "middle_name"
    t.integer "phone_number"
    t.string "preferred_contact_method"
    t.string "role_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
