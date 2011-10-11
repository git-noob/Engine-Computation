class CreateRegulatoryFees < ActiveRecord::Migration
  def self.up
    create_table :regulatory_fees do |t|
      t.string :name
      t.text :remarks
      t.timestamps
    end
  end

  def self.down
    drop_table :regulatory_fees
  end
end
