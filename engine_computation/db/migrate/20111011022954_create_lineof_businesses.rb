class CreateLineofBusinesses < ActiveRecord::Migration
  def self.up
    create_table :lineof_businesses do |t|
      t.string :name
      t.text :remarks
      t.timestamps
    end
  end

  def self.down
    drop_table :lineof_businesses
  end
end
