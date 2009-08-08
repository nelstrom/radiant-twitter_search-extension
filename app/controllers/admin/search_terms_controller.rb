class Admin::SearchTermsController < ApplicationController

  def index
    @search_terms = SearchTerm.find(:all)
  end

end
