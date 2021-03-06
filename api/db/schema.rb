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

ActiveRecord::Schema.define(version: 20160705140711) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "players", force: true do |t|
    t.string   "name",                   null: false
    t.integer  "n_wins",     default: 0
    t.integer  "n_loses",    default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registered_players", id: false, force: true do |t|
    t.integer "tournament_id",                null: false
    t.integer "player_id",                    null: false
    t.integer "n_wins",        default: 0
    t.integer "n_loses",       default: 0
    t.boolean "active",        default: true
  end

  add_index "registered_players", ["tournament_id", "player_id"], name: "index_registered_players_on_tournament_id_and_player_id", using: :btree

  create_table "tournament_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tournaments", force: true do |t|
    t.string   "name",               null: false
    t.integer  "tournament_type_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tournaments", ["tournament_type_id"], name: "index_tournaments_on_tournament_type_id", using: :btree

end
