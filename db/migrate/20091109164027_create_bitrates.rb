class CreateBitrates < ActiveRecord::Migration
  def self.up
    create_table :bitrates do |t|
      t.string :name
      t.integer :code

      t.timestamps
    end
    add_index :bitrates, :name
    add_index :bitrates, :code
  end

  def self.down
    drop_table :bitrates
  end
end
