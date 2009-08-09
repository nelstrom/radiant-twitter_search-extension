class SearchTermTweet < ActiveRecord::Base
  belongs_to :search_term
  belongs_to :tweet
  validates_presence_of :search_term_id, :tweet_id
end
