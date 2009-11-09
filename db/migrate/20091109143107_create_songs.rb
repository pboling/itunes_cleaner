class CreateSongs < ActiveRecord::Migration
  def self.up
    create_table :songs do |t|
      t.string :name
      t.string :album
      t.string :artist
      t.integer :length

      t.timestamps
    end

    add_index :songs, :name
    #For searching for possible duplicates +/- ~4 seconds
    add_index :songs, [:name, :album, :artist]
    #For searching for exact duplicates
    add_index :songs, [:name, :album, :artist, :length]
  end

  def self.down
    drop_table :songs
  end
end
