class Admin::TweetsController < ApplicationController

  def index
    @search_term = SearchTerm.find(params[:search_term_id])
    @featured = @search_term.tweets.all(:conditions => ["featured = ?", true])
    @tweets = @search_term.tweets.all(:conditions => ["featured = ?", false])
  end

  def feature
    @search_term = SearchTerm.find(params[:search_term_id])
    @search_term.tweets.each { |t| t.update_attributes(:featured => false) }
    Tweet.find(params[:featured]).each { |t| t.update_attributes(:featured => true) }
    redirect_to :action => "index", :search_term_id => params[:search_term_id]
  end
end
