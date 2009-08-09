class CreateSearchTermTweets < ActiveRecord::Migration
  def self.up
    create_table :search_term_tweets do |t|
      t.integer :search_term_id
      t.integer :tweet_id

      t.timestamps
    end
  end

  def self.down
    drop_table :search_term_tweets
  end
end
