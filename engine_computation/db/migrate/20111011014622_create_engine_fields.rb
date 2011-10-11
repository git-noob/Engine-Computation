class CreateEngineFields < ActiveRecord::Migration
  def self.up
    create_table :engine_fields do |t|
      t.string :key
      t.string :value
      t.timestamps
    end
  end

  def self.down
    drop_table :engine_fields
  end
end
