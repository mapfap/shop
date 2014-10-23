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

ActiveRecord::Schema.define(version: 20141023085623) do

  create_table "addresses", force: true do |t|
    t.string   "house_no"
    t.string   "village_name"
    t.string   "moo"
    t.string   "road"
    t.string   "district"
    t.string   "postal_code"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_products", id: false, force: true do |t|
    t.integer "product_id"
    t.integer "category_id"
  end

  create_table "cities", force: true do |t|
    t.string   "name"
    t.integer  "province_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guests", force: true do |t|
    t.string   "token"
    t.string   "ipaddress"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guests_products", force: true do |t|
    t.integer "product_id"
    t.integer "guest_id"
  end

  create_table "imports", force: true do |t|
    t.integer  "product_id"
    t.float    "quantity"
    t.float    "total_cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
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

  add_index "members", ["email"], name: "index_members_on_email", unique: true
  add_index "members", ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true

  create_table "models", force: true do |t|
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

  add_index "models", ["email"], name: "index_models_on_email", unique: true
  add_index "models", ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true

  create_table "order_items", force: true do |t|
    t.integer  "order_id"
    t.float    "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.string   "status"
    t.string   "shipping_type"
    t.string   "payment_type"
    t.float    "total_price"
    t.float    "percent_discount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_items_id"
  end

  create_table "permissions", force: true do |t|
    t.integer  "staff_action_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions_positions", force: true do |t|
    t.integer "position_id"
    t.integer "permission_id"
  end

  create_table "positions", force: true do |t|
    t.string   "name"
    t.integer  "staff_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_description_images", force: true do |t|
    t.integer  "product_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_thumbnails", force: true do |t|
    t.integer  "product_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.float    "price"
    t.string   "description"
    t.float    "weight"
    t.float    "quantity"
    t.float    "width"
    t.float    "height"
    t.float    "depth"
    t.float    "percent_discount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_item_id"
    t.integer  "wish_item_id"
  end

  create_table "products_tags", id: false, force: true do |t|
    t.integer "tag_id"
    t.integer "product_id"
  end

  create_table "provinces", force: true do |t|
    t.string   "name"
    t.integer  "region_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staff_actions", force: true do |t|
    t.integer  "permission_id"
    t.integer  "staff_id"
    t.string   "details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staffs", force: true do |t|
    t.string   "name"
    t.string   "lastname"
    t.integer  "position_id"
    t.integer  "staff_action_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wish_items", force: true do |t|
    t.integer  "product_id"
    t.float    "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
