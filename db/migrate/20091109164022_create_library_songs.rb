class CreateLibrarySongs < ActiveRecord::Migration
  def self.up
    create_table :library_songs do |t|
      t.integer :song_id
      t.integer :library_id

      t.timestamps
    end
    add_index :library_songs, [:song_id, :library_id]
  end

  def self.down
    drop_table :library_songs
  end
end
