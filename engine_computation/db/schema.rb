# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111011065556) do

  create_table "bne_tables", :force => true do |t|
    t.string   "engine_fields_key"
    t.decimal  "minimum",            :precision => 15, :scale => 2
    t.decimal  "maximum",            :precision => 15, :scale => 2
    t.decimal  "amount",             :precision => 15, :scale => 2
    t.decimal  "percent1",           :precision => 15, :scale => 2
    t.decimal  "percent2",           :precision => 15, :scale => 2
    t.string   "fee_based"
    t.integer  "lineof_business_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "direct_tables", :force => true do |t|
    t.string   "engine_fields_key"
    t.decimal  "amount",             :precision => 15, :scale => 2
    t.integer  "lineof_business_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "engine_fields", :force => true do |t|
    t.string   "key"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "engine_process_orders", :force => true do |t|
    t.string   "engine_fields_value"
    t.integer  "order_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lineof_businesses", :force => true do |t|
    t.string   "name"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regulatory_fees", :force => true do |t|
    t.string   "name"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unit_tables", :force => true do |t|
    t.string   "name"
    t.string   "engine_fields_key"
    t.integer  "lineof_business_id"
    t.decimal  "amount",             :precision => 15, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
