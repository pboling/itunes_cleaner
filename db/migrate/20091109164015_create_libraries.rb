class CreateLibraries < ActiveRecord::Migration
  def self.up
    create_table :libraries do |t|
      t.string :name
      t.string :location
      t.datetime :cleaned_at

      t.timestamps
    end
    add_index :libraries, :name
  end

  def self.down
    drop_table :libraries
  end
end
