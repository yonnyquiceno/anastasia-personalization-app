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

ActiveRecord::Schema.define(version: 20160817201735) do

  create_table "articles", force: :cascade do |t|
    t.string   "article_name"
    t.string   "description"
    t.string   "image1"
    t.string   "image2"
    t.string   "image3"
    t.string   "dimension"
    t.boolean  "available"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "category_id"
  end

  add_index "articles", ["category_id"], name: "index_articles_on_category_id"

  create_table "categories", force: :cascade do |t|
    t.string   "category_name"
    t.string   "image"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "photo"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "material_parts", force: :cascade do |t|
    t.integer  "material_id"
    t.integer  "part_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "material_parts", ["material_id"], name: "index_material_parts_on_material_id"
  add_index "material_parts", ["part_id"], name: "index_material_parts_on_part_id"

  create_table "materials", force: :cascade do |t|
    t.string   "material_name"
    t.float    "total_weight"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "parts", force: :cascade do |t|
    t.string   "part_name"
    t.float    "weight"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "parts", ["product_id"], name: "index_parts_on_product_id"

  create_table "products", force: :cascade do |t|
    t.integer  "manufacturer_id"
    t.boolean  "approved"
    t.boolean  "sended"
    t.float    "price"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "category_id"
    t.integer  "article_id"
  end

  add_index "products", ["article_id"], name: "index_products_on_article_id"
  add_index "products", ["category_id"], name: "index_products_on_category_id"
  add_index "products", ["manufacturer_id"], name: "index_products_on_manufacturer_id"

  create_table "references", force: :cascade do |t|
    t.string   "reference_name"
    t.string   "description"
    t.string   "image"
    t.string   "dimension"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
