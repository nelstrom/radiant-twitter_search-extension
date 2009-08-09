require File.dirname(__FILE__) + '/../spec_helper'

describe SearchTermTweet do
  before(:each) do
    @search_term_tweet = SearchTermTweet.new
  end

  it "should be valid" do
    @search_term_tweet.should be_valid
  end
end
