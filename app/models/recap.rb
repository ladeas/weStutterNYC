class Recap < ActiveRecord::Base
	mount_uploader :photo, ImageUploader

	default_scope order('created_at DESC')

	belongs_to :user

	validates_presence_of :user_id, :title, :body

end
