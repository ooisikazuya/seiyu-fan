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

ActiveRecord::Schema.define(version: 2020_12_10_070221) do

  create_table "voice_actors", force: :cascade do |t|
    t.string "last_name", null: false
    t.string "first_name", default: "", null: false
    t.string "last_name_kana", null: false
    t.string "first_name_kana", default: "", null: false
    t.string "prefecture", null: false
    t.string "address", default: "", null: false
    t.string "wikipedia_url", default: "", null: false
    t.string "twitter_url", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["last_name_kana"], name: "index_voice_actors_on_last_name_kana"
    t.index ["prefecture"], name: "index_voice_actors_on_prefecture"
  end

end

