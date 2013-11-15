class Event < ActiveRecord::Base
	default_scope order('start_datetime DESC')
	self.inheritance_column = nil
end
