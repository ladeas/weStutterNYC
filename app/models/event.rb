class Event < ActiveRecord::Base
	default_scope order('start_datetime ASC')
	self.inheritance_column = nil

	mount_uploader :photo, ImageUploader
end
