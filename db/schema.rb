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

ActiveRecord::Schema.define(version: 20160909113357) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "divisions", force: :cascade do |t|
    t.string   "division_name"
    t.integer  "league_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["league_id"], name: "index_divisions_on_league_id", using: :btree
  end

  create_table "leagues", force: :cascade do |t|
    t.string   "league_name"
    t.integer  "season_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["season_id"], name: "index_leagues_on_season_id", using: :btree
  end

  create_table "players", force: :cascade do |t|
    t.integer  "team_id"
    t.string   "surname"
    t.string   "given_name"
    t.string   "position"
    t.integer  "games"
    t.integer  "games_started"
    t.integer  "at_bats"
    t.integer  "runs"
    t.integer  "hits"
    t.integer  "doubles"
    t.integer  "triples"
    t.integer  "home_runs"
    t.integer  "rbi"
    t.integer  "steals"
    t.integer  "caught_stealing"
    t.integer  "sacrifice_hits"
    t.integer  "sacrifice_flies"
    t.integer  "errs"
    t.integer  "pb"
    t.integer  "walks"
    t.integer  "struck_out"
    t.integer  "hit_by_pitch"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "throws"
    t.string   "wins"
    t.string   "era"
    t.string   "innings"
    t.string   "earned_runs"
    t.string   "hit_batter"
    t.string   "walked_batter"
    t.string   "wild_pitches"
    t.string   "balk"
    t.string   "complete_games"
    t.string   "shut_outs"
    t.string   "struck_out_batter"
    t.string   "losses"
    t.string   "saves"
    t.index ["team_id"], name: "index_players_on_team_id", using: :btree
  end

  create_table "seasons", force: :cascade do |t|
    t.integer  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "team_city"
    t.string   "team_name"
    t.integer  "division_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["division_id"], name: "index_teams_on_division_id", using: :btree
  end

  add_foreign_key "divisions", "leagues"
  add_foreign_key "leagues", "seasons"
  add_foreign_key "players", "teams"
  add_foreign_key "teams", "divisions"
end
