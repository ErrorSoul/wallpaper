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

ActiveRecord::Schema.define(version: 20141205123538) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "areas", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "text"
  end

  create_table "carts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clue_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clues", force: true do |t|
    t.string   "title"
    t.string   "asset"
    t.decimal  "price",        precision: 8, scale: 2
    t.decimal  "weight",       precision: 8, scale: 2
    t.string   "vendor"
    t.integer  "country_id"
    t.integer  "clue_type_id"
    t.string   "marking"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "consumption"
    t.text     "description"
  end

  add_index "clues", ["clue_type_id"], name: "index_clues_on_clue_type_id"
  add_index "clues", ["country_id"], name: "index_clues_on_country_id"

  create_table "collections", force: true do |t|
    t.string   "name"
    t.integer  "label_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "asset"
  end

  add_index "collections", ["label_id"], name: "index_collections_on_label_id"

  create_table "countries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "asset"
  end

  create_table "labels", force: true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "asset"
  end

  add_index "labels", ["country_id"], name: "index_labels_on_country_id"

  create_table "line_items", force: true do |t|
    t.integer  "product_id"
    t.string   "product_type"
    t.integer  "cart_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_id"
  end

  add_index "line_items", ["cart_id"], name: "index_line_items_on_cart_id"
  add_index "line_items", ["order_id"], name: "index_line_items_on_order_id"
  add_index "line_items", ["product_id", "product_type"], name: "index_line_items_on_product_id_and_product_type"

  create_table "orders", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "total",      precision: 8, scale: 2
  end

  create_table "paints", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.decimal  "price",         precision: 8, scale: 2
    t.decimal  "weight",        precision: 8, scale: 2
    t.decimal  "height",        precision: 8, scale: 2
    t.string   "marking"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "collection_id"
    t.integer  "type_id"
    t.string   "asset"
    t.integer  "paint_id"
    t.integer  "area_id"
  end

  add_index "products", ["area_id"], name: "index_products_on_area_id"
  add_index "products", ["collection_id"], name: "index_products_on_collection_id"
  add_index "products", ["paint_id"], name: "index_products_on_paint_id"
  add_index "products", ["type_id"], name: "index_products_on_type_id"

  create_table "slider_mains", force: true do |t|
    t.text   "text"
    t.string "asset"
  end

  create_table "tips", force: true do |t|
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "text"
  end

end
