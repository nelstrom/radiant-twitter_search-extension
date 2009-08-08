class CreateTweets < ActiveRecord::Migration
  def self.up
    create_table :tweets do |t|
      t.string :text
      t.string :twitter_id
      t.string :from_user_id
      t.string :from_user_name
      t.boolean :featured

      t.timestamps
    end
  end

  def self.down
    drop_table :tweets
  end
end
