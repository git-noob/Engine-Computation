class CreateUnitTables < ActiveRecord::Migration
  def self.up
    create_table :unit_tables do |t|
    	t.string :name
      t.string :engine_fields_key
      t.integer :lineof_business_id
      t.decimal :amount, :precision => 15, :scale => 2
      t.timestamps
    end
  end

  def self.down
    drop_table :unit_tables
  end
end
