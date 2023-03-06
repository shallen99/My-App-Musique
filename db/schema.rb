# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_03_03_103328) do

  create_table "artists", force: :cascade do |t|
    t.string "artist_name"
    t.text "song_name"
    t.string "genre"
    t.integer "producers_id"
  end

  create_table "producers", force: :cascade do |t|
    t.string "producer_name"
    t.string "song_name"
    t.integer "producers_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "song_name"
    t.integer "artist_id"
    t.integer "producers_id"
  end

end
