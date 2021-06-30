# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_29_151737) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "contracts", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.date "rent_due_date"
    t.float "rent"
    t.float "rental_expenses"
    t.bigint "housing_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["housing_id"], name: "index_contracts_on_housing_id"
  end

  create_table "documents", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.bigint "housing_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["housing_id"], name: "index_documents_on_housing_id"
  end

  create_table "expenses", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.text "description"
    t.float "amount"
    t.bigint "housing_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["housing_id"], name: "index_expenses_on_housing_id"
  end

  create_table "housings", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.text "description"
    t.integer "nb_rooms"
    t.float "surface"
    t.string "category"
    t.string "status"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_housings_on_user_id"
  end

  create_table "renter_contracts", force: :cascade do |t|
    t.bigint "renter_id", null: false
    t.bigint "contract_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contract_id"], name: "index_renter_contracts_on_contract_id"
    t.index ["renter_id"], name: "index_renter_contracts_on_renter_id"
  end

  create_table "renters", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rents", force: :cascade do |t|
    t.float "amount"
    t.string "status"
    t.string "name"
    t.string "date"
    t.bigint "contract_id", null: false
    t.bigint "housing_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contract_id"], name: "index_rents_on_contract_id"
    t.index ["housing_id"], name: "index_rents_on_housing_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.text "address"
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "contracts", "housings"
  add_foreign_key "documents", "housings"
  add_foreign_key "expenses", "housings"
  add_foreign_key "housings", "users"
  add_foreign_key "renter_contracts", "contracts"
  add_foreign_key "renter_contracts", "renters"
  add_foreign_key "rents", "contracts"
  add_foreign_key "rents", "housings"
end
