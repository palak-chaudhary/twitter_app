class User < ApplicationRecord
	has_many :tweets
	has_many :user_followings

	
end
