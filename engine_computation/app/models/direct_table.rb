class DirectTable < ActiveRecord::Base
  attr_accessible :engine_fields_key, :amount, :lineof_business_id
  
  belongs_to :lineof_business
end
