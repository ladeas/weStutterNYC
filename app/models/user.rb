class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	# validates :name, presence: true
	validates :email, presence: true
	validates :email, uniqueness: true

	has_many :recaps


# def active_for_authentication? 
#   super && approved? 
# end 

# def inactive_message 
#   if !approved? 
#     :not_approved 
#   else 
#     super # Use whatever other message 
#   end 
end 
