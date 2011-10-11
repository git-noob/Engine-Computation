class BneTable < ActiveRecord::Base
  attr_accessible :engine_fields_key, :minimum, :maximum, :amount, :percent1, :percent2, :fee_based, :lineof_business_id
end
