class AddAssociations < ActiveRecord::Migration[5.0]
  def change
  	add_reference :tweets, :twitter_user, index: true
  	add_reference :user_followings, :twitter_user, index: true
  end
end
