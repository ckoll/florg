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

ActiveRecord::Schema.define(:version => 20130303010348) do

  create_table "chapters", :force => true do |t|
    t.integer  "user_id"
    t.integer  "portal_id"
    t.integer  "story_id"
    t.integer  "chapternum"
    t.string   "body"
    t.string   "title"
    t.string   "hearts_count"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "commentcomments", :force => true do |t|
    t.integer  "comment_id"
    t.string   "body"
    t.integer  "user_id"
    t.integer  "portal_id"
    t.integer  "emoticon"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.string   "body"
    t.integer  "user_id"
    t.integer  "portal_id"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.integer  "emoticon"
    t.integer  "comment_count"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "comments", ["commentable_id", "commentable_type"], :name => "index_comments_on_commentable_id_and_commentable_type"

  create_table "fanportalrelationships", :force => true do |t|
    t.integer  "portal_id"
    t.integer  "user_id"
    t.string   "usertype"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "fanportalrelationships", ["portal_id"], :name => "index_fanportalrelationships_on_portal_id"
  add_index "fanportalrelationships", ["user_id", "portal_id"], :name => "index_fanportalrelationships_on_user_id_and_portal_id", :unique => true
  add_index "fanportalrelationships", ["user_id"], :name => "index_fanportalrelationships_on_user_id"

  create_table "heartrelationships", :force => true do |t|
    t.integer  "user_id"
    t.integer  "portal_id"
    t.integer  "heartable_id"
    t.string   "heartable_type"
    t.integer  "heartedid"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "newsposts", :force => true do |t|
    t.integer  "user_id"
    t.string   "portal_id"
    t.string   "title"
    t.string   "slug"
    t.string   "body"
    t.integer  "views"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pagegrouprelationships", :force => true do |t|
    t.integer  "page_id"
    t.integer  "pagegroup_id"
    t.integer  "pageorder"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "pagegroups", :force => true do |t|
    t.integer  "portal_id"
    t.string   "user_id"
    t.string   "title"
    t.string   "slug"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pages", :force => true do |t|
    t.integer  "user_id"
    t.string   "portal_id"
    t.string   "title"
    t.string   "slug"
    t.string   "body"
    t.integer  "pagegroup_id", :default => 0
    t.integer  "parentpage",   :default => 0
    t.integer  "views"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "photoalbums", :force => true do |t|
    t.integer  "portal_id"
    t.string   "createdby"
    t.string   "title"
    t.string   "slug"
    t.string   "description"
    t.integer  "photos_count"
    t.integer  "order"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "photos", :force => true do |t|
    t.string   "filename"
    t.string   "filepath"
    t.string   "slug"
    t.integer  "photoalbum_id"
    t.integer  "uploadedby"
    t.integer  "portal_id"
    t.integer  "source"
    t.integer  "views"
    t.integer  "hearts_count"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "pollanswers", :force => true do |t|
    t.integer  "pollquestion_id"
    t.integer  "pollchoice_id"
    t.string   "user_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "pollchoices", :force => true do |t|
    t.integer  "pollquestion_id"
    t.string   "choice"
    t.integer  "order"
    t.string   "image"
    t.integer  "pollanswers_count", :default => 0
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "pollquestions", :force => true do |t|
    t.string   "question"
    t.integer  "user_id"
    t.integer  "portal_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "portals", :force => true do |t|
    t.integer  "founder",     :limit => 255, :default => 1
    t.datetime "datefounded"
    t.string   "title"
    t.string   "header"
    t.integer  "users_count",                :default => 0
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "slug"
    t.string   "directory"
    t.string   "popular"
  end

  add_index "portals", ["slug"], :name => "index_portals_on_slug", :unique => true
  add_index "portals", ["title"], :name => "index_portals_on_title", :unique => true

  create_table "qanswers", :force => true do |t|
    t.integer  "question_id"
    t.integer  "answeredby"
    t.integer  "answer"
    t.string   "image"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "questions", :force => true do |t|
    t.integer  "user_id"
    t.integer  "portal_id"
    t.integer  "question"
    t.string   "image"
    t.integer  "accepted_answer", :default => 0
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  create_table "stories", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "email"
    t.boolean  "confirmed",           :default => false
    t.datetime "lastvisit"
    t.string   "profilepic"
    t.string   "profile"
    t.integer  "photos_count"
    t.integer  "videos_count"
    t.integer  "pages_count"
    t.integer  "comments_count"
    t.integer  "pollanswers_count"
    t.integer  "pollquestions_count"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"
  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

  create_table "videos", :force => true do |t|
    t.string   "filename"
    t.string   "filepath"
    t.string   "slug"
    t.integer  "uploadedby"
    t.integer  "portal_id"
    t.integer  "source"
    t.integer  "views"
    t.integer  "heart_count"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "voiceresponses", :force => true do |t|
    t.integer  "voice_id"
    t.integer  "answeredby"
    t.integer  "answer"
    t.string   "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "voices", :force => true do |t|
    t.integer  "user_id"
    t.integer  "portal_id"
    t.integer  "question"
    t.string   "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
