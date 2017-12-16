class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.text :message
      t.string :photo_link

      t.timestamps
    end
  end
end
