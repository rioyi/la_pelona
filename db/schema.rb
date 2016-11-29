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

ActiveRecord::Schema.define(version: 20161129054619) do

  create_table "ages", force: :cascade do |t|
    t.string   "edad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "periods", force: :cascade do |t|
    t.integer  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quantities", force: :cascade do |t|
    t.integer  "sex_id"
    t.integer  "state_id"
    t.integer  "sickness_specific_id"
    t.integer  "period_id"
    t.integer  "age_id"
    t.integer  "cantidad"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["age_id"], name: "index_quantities_on_age_id"
    t.index ["period_id"], name: "index_quantities_on_period_id"
    t.index ["sex_id"], name: "index_quantities_on_sex_id"
    t.index ["sickness_specific_id"], name: "index_quantities_on_sickness_specific_id"
    t.index ["state_id"], name: "index_quantities_on_state_id"
  end

  create_table "sexes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sickness_generals", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sickness_specifics", force: :cascade do |t|
    t.string   "name"
    t.string   "cod"
    t.integer  "sickness_general_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
