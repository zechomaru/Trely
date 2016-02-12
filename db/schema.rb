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
 #                 <td><%= page.name.html_safe %></td>
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160209060148) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "name"
    t.string   "last_name"
    t.string   "country"
    t.string   "city"
    t.string   "phone"
    t.string   "gender"
    t.integer  "role_id"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  add_index "admins", ["role_id"], name: "index_admins_on_role_id"

  create_table "bundles", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string   "url"
    t.string   "title"
    t.string   "subtitle"
    t.string   "buttom"
    t.text     "paso_one"
    t.text     "paso_two"
    t.text     "paso_tree"
    t.boolean  "visibility"
    t.integer  "service_id"
    t.integer  "bundle_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pages", ["bundle_id"], name: "index_pages_on_bundle_id"
  add_index "pages", ["service_id"], name: "index_pages_on_service_id"

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.integer  "bundle_id"
    t.float    "price"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "img_serivce_file_name"
    t.string   "img_serivce_content_type"
    t.integer  "img_serivce_file_size"
    t.datetime "img_serivce_updated_at"
    t.string   "img_serivce_hover_file_name"
    t.string   "img_serivce_hover_content_type"
    t.integer  "img_serivce_hover_file_size"
    t.datetime "img_serivce_hover_updated_at"
    t.string   "imghover_file_name"
    t.string   "imghover_content_type"
    t.integer  "imghover_file_size"
    t.datetime "imghover_updated_at"
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
  end

  add_index "services", ["bundle_id"], name: "index_services_on_bundle_id"
  add_index "services", ["category_id"], name: "index_services_on_category_id"

end
