class CreateBneTables < ActiveRecord::Migration
  def self.up
    create_table :bne_tables do |t|
      t.string :engine_fields_key
      t.decimal :minimum, :precision => 15, :scale => 2
      t.decimal :maximum, :precision => 15, :scale => 2
      t.decimal :amount, :precision => 15, :scale => 2
      t.decimal :percent1, :precision => 15, :scale => 2
      t.decimal :percent2, :precision => 15, :scale => 2
      t.string :fee_based
      t.integer :lineof_business_id
      t.timestamps
    end
  end

  def self.down
    drop_table :bne_tables
  end
end
