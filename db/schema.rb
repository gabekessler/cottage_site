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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110731184354) do

  create_table "admins", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "locations", :force => true do |t|
    t.text     "location_address"
    t.string   "location_name"
    t.text     "location_phone"
    t.text     "location_hours"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "page_title"
    t.text     "page_description"
    t.string   "page_keywords"
    t.string   "heading"
    t.text     "body"
    t.boolean  "sidebar"
    t.string   "page_image_file_name"
    t.string   "page_image_content_type"
    t.integer  "page_image_file_size"
    t.datetime "page_image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cached_slug"
    t.string   "title"
  end

  create_table "services", :force => true do |t|
    t.string   "title"
    t.text     "service_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "slideshow_images", :force => true do |t|
    t.string   "slide_file_name"
    t.string   "slide_content_type"
    t.integer  "slide_file_size"
    t.datetime "slide_updated_at"
    t.string   "caption"
    t.string   "slide_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "slugs", :force => true do |t|
    t.string   "name"
    t.integer  "sluggable_id"
    t.integer  "sequence",                     :default => 1, :null => false
    t.string   "sluggable_type", :limit => 40
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "slugs", ["name", "sluggable_type", "sequence", "scope"], :name => "index_slugs_on_n_s_s_and_s", :unique => true
  add_index "slugs", ["sluggable_id"], :name => "index_slugs_on_sluggable_id"

end
