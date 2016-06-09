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

ActiveRecord::Schema.define(version: 20160605085252) do

  create_table "otypes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ovalues", force: :cascade do |t|
    t.integer  "otype_id"
    t.integer  "discount",   default: 0
    t.string   "value"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "ovalues", ["otype_id"], name: "index_ovalues_on_otype_id"

  create_table "ovalues_variants", force: :cascade do |t|
    t.integer  "ovalue_id"
    t.integer  "variant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ovalues_variants", ["ovalue_id"], name: "index_ovalues_variants_on_ovalue_id"
  add_index "ovalues_variants", ["variant_id"], name: "index_ovalues_variants_on_variant_id"

  create_table "products", force: :cascade do |t|
    t.integer  "price"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "qualities", force: :cascade do |t|
    t.integer  "otype_id"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "qualities", ["otype_id"], name: "index_qualities_on_otype_id"
  add_index "qualities", ["product_id"], name: "index_qualities_on_product_id"

  create_table "ualities", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "variants", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "variants", ["product_id"], name: "index_variants_on_product_id"

end
