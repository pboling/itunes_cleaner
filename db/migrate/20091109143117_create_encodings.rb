class CreateEncodings < ActiveRecord::Migration
  def self.up
    create_table :encodings do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
    add_index :encodings, :code
  end

  def self.down
    drop_table :encodings
  end
end
