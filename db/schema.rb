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

ActiveRecord::Schema.define(:version => 20130809214640) do

  create_table "heros", :force => true do |t|
    t.string   "name",                                   :null => false
    t.string   "class_type",                             :null => false
    t.integer  "level",                :default => 1,    :null => false
    t.integer  "health_current",       :default => 100,  :null => false
    t.integer  "health_max",           :default => 100,  :null => false
    t.integer  "skill_points_current", :default => 0,    :null => false
    t.integer  "skill_points_total",   :default => 0,    :null => false
    t.integer  "exp_current",          :default => 0,    :null => false
    t.integer  "exp_total",            :default => 0,    :null => false
    t.integer  "exp_to_next_level",    :default => 1000, :null => false
    t.integer  "user_id",                                :null => false
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  create_table "user_sessions", :force => true do |t|
    t.string   "user_sessions_id", :null => false
    t.text     "data"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "user_sessions", ["updated_at"], :name => "index_user_sessions_on_updated_at"
  add_index "user_sessions", ["user_sessions_id"], :name => "index_user_sessions_on_user_sessions_id"

  create_table "users", :force => true do |t|
    t.string   "username",                            :null => false
    t.string   "email",                               :null => false
    t.string   "crypted_password",                    :null => false
    t.string   "password_salt",                       :null => false
    t.string   "persistence_token",                   :null => false
    t.string   "perishable_token",  :default => "",   :null => false
    t.integer  "login_count",       :default => 0,    :null => false
    t.datetime "last_request_at"
    t.datetime "last_login_at"
    t.datetime "current_login_at"
    t.string   "last_login_ip"
    t.string   "current_login_ip"
    t.boolean  "active",            :default => true, :null => false
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

end
