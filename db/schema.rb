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

ActiveRecord::Schema.define(:version => 20111004201635) do

  create_table "nfl_cal_assignments", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "nfl_cal_id"
    t.integer  "nfl_game_id"
  end

  add_index "nfl_cal_assignments", ["nfl_cal_id"], :name => "index_nfl_cal_assignments_on_nfl_cal_id"
  add_index "nfl_cal_assignments", ["nfl_game_id"], :name => "index_nfl_cal_assignments_on_nfl_game_id"

  create_table "nfl_cals", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "gameday"
    t.string   "name"
  end

  create_table "nfl_games", :force => true do |t|
    t.string   "winner"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "nfl_teams", :force => true do |t|
    t.string   "team_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "division"
    t.string   "name"
  end

  create_table "team_assignments", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "nfl_team_id"
    t.integer  "nfl_game_id"
  end

  add_index "team_assignments", ["nfl_game_id"], :name => "index_team_assignments_on_nfl_game_id"
  add_index "team_assignments", ["nfl_team_id"], :name => "index_team_assignments_on_nfl_team_id"

  create_table "users", :force => true do |t|
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "email_address"
    t.boolean  "administrator",                           :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state",                                   :default => "active"
    t.datetime "key_timestamp"
    t.string   "name"
    t.string   "last_name"
    t.integer  "age"
    t.string   "gender"
    t.string   "username"
  end

  add_index "users", ["state"], :name => "index_users_on_state"

end
