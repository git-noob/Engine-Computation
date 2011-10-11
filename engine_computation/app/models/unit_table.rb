class UnitTable < ActiveRecord::Base
	attr_accessible :engine_fields_key, :lineof_business_id, :amount, :name
	
	belongs_to :lineof_business
end
