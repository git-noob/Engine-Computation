class CreateEngineProcessOrders < ActiveRecord::Migration
  def self.up
    create_table :engine_process_orders do |t|
      t.string :engine_fields_value
      t.integer :order_no
      t.timestamps
    end
  end

  def self.down
    drop_table :engine_process_orders
  end
end
