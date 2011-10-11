module UnitTablesHelper
	def engine_fields_for_select
		EngineField.find(:all, :order => 'value ASC').collect{ |a| [a.key, a.value] }
	end
	
	def lineofbusiness_for_select
		LineofBusiness.find(:all, :order => 'name ASC').collect{ |a| [a.name, a.id] }
	end
end
