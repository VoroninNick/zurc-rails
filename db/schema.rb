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

ActiveRecord::Schema.define(version: 20131219041208) do

  create_table "ckeditor_assets", force: true do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"

  create_table "home_banners", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "description"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "effect"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "home_gallery_images", force: true do |t|
    t.string   "name"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "alt_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "main_menu_items", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.integer  "parent_id"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "page_id"
    t.integer  "display_index"
  end

  add_index "main_menu_items", ["page_id"], name: "index_main_menu_items_on_page_id"

  create_table "news_entries", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.boolean  "display_avatar_on_content_page"
    t.text     "short_description"
    t.text     "intro"
    t.text     "content"
    t.string   "author"
    t.datetime "release_date"
    t.boolean  "publish"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: true do |t|
    t.string   "name"
    t.string   "head_title"
    t.string   "body_title"
    t.text     "breadcrumbs"
    t.string   "route"
    t.text     "meta_keywords"
    t.text     "meta_description"
    t.text     "meta_tags"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "main_menu_item_id"
  end

  add_index "pages", ["main_menu_item_id"], name: "index_pages_on_main_menu_item_id"

  create_table "publications", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.boolean  "display_avatar_on_content_page"
    t.text     "short_description"
    t.text     "intro"
    t.text     "content"
    t.string   "author"
    t.datetime "release_date"
    t.boolean  "publish"
    t.string   "doc_file_file_name"
    t.string   "doc_file_content_type"
    t.integer  "doc_file_file_size"
    t.datetime "doc_file_updated_at"
    t.string   "pdf_file_file_name"
    t.string   "pdf_file_content_type"
    t.integer  "pdf_file_file_size"
    t.datetime "pdf_file_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
