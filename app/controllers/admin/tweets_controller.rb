class Admin::TweetsController < ApplicationController

  def index
    @search_term = SearchTerm.find(params[:search_term_id])
    @featured = @search_term.tweets.all(:conditions => ["featured = ?", true])
    @tweets = @search_term.tweets.all(:conditions => ["featured IS NULL"])
  end
end
