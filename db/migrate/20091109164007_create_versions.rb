class CreateVersions < ActiveRecord::Migration
  def self.up
    create_table :versions do |t|
      t.integer :song_id
      t.integer :encoding_id
      t.integer :bitrate_id

      t.timestamps
    end
    add_index :versions, [:song_id, :encoding_id, :bitrate_id]
  end

  def self.down
    drop_table :versions
  end
end
