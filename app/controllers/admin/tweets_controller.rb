class Admin::TweetsController < ApplicationController

  def index
    @search_term = SearchTerm.find(params[:search_term_id])
    @tweets = @search_term.tweets
  end
end
