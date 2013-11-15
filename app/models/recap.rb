class Recap < ActiveRecord::Base
	default_scope order('created_at DESC')

	belongs_to :user
	mount_uploader :photo, ImageUploader

end
