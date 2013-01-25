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
# It's strongly recommended to check this file into your version control system.



ActiveRecord::Schema.define(:version => 20130124201201) do

# VO - I know you get them for free, but you don't need created_at/updated_at fields in most of these tables.  
#      They kind of just clutter up the schema.  

  create_table "comments", :force => true do |t|
    t.integer  "user_id"
    t.text     "comment"
    t.integer  "link_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "links", :force => true do |t|
    t.text     "url_long"
    t.string   "url_short"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tag_texts", :force => true do |t|
    t.string  "text"
    t.integer "tag_id"
  end

  create_table "tags", :force => true do |t|
    t.integer  "link_id"
    t.integer  "tag_text_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string "username"
  end

  create_table "visits", :force => true do |t|
    t.integer  "user_id"
    t.integer  "link_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
