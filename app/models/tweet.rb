class Tweet < ApplicationRecord
	belongs_to :twitter_user
	has_many :pictures, as: :imageable
end
