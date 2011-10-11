module EngineProcessOrdersHelper
	def engine_fields_for_select
		EngineField.find(:all, :order => 'value ASC').collect{|a| [a.key, a.value]}
	end
end
