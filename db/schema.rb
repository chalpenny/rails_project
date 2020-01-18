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

ActiveRecord::Schema.define(version: 2020_01_18_224339) do

  create_table "appointments", force: :cascade do |t|
    t.string "start_date"
    t.string "end_date"
    t.integer "user_id"
    t.integer "client_id"
    t.integer "appt_fee"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "appt_note"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.string "neighborhood"
    t.string "address"
    t.integer "base_fee"
    t.string "client_notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "notes"
    t.integer "client_id", null: false
    t.integer "TempPetNotes_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["TempPetNotes_id"], name: "index_pets_on_TempPetNotes_id"
    t.index ["client_id"], name: "index_pets_on_client_id"
  end

  create_table "temp_pet_notes", force: :cascade do |t|
    t.string "content"
    t.integer "pet_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pet_id"], name: "index_temp_pet_notes_on_pet_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "pets", "TempPetNotes", column: "TempPetNotes_id"
  add_foreign_key "pets", "clients"
  add_foreign_key "temp_pet_notes", "pets"
end
