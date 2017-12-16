class CreateUserFollowings < ActiveRecord::Migration[5.0]
  def change
    create_table :user_followings do |t|
      t.string :following_user_id

      t.timestamps
    end
  end
end
