# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091109164027) do

  create_table "bitrates", :force => true do |t|
    t.string   "name"
    t.integer  "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bitrates", ["code"], :name => "index_bitrates_on_code"
  add_index "bitrates", ["name"], :name => "index_bitrates_on_name"

  create_table "encodings", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "encodings", ["code"], :name => "index_encodings_on_code"

  create_table "libraries", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "cleaned_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "libraries", ["name"], :name => "index_libraries_on_name"

  create_table "library_songs", :force => true do |t|
    t.integer  "song_id"
    t.integer  "library_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "library_songs", ["song_id", "library_id"], :name => "index_library_songs_on_song_id_and_library_id"

  create_table "songs", :force => true do |t|
    t.string   "name"
    t.string   "album"
    t.string   "artist"
    t.integer  "length"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "songs", ["name", "album", "artist", "length"], :name => "index_songs_on_name_and_album_and_artist_and_length"
  add_index "songs", ["name", "album", "artist"], :name => "index_songs_on_name_and_album_and_artist"
  add_index "songs", ["name"], :name => "index_songs_on_name"

  create_table "versions", :force => true do |t|
    t.integer  "song_id"
    t.integer  "encoding_id"
    t.integer  "bitrate_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "versions", ["song_id", "encoding_id", "bitrate_id"], :name => "index_versions_on_song_id_and_encoding_id_and_bitrate_id"

end
