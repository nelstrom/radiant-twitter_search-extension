class Admin::SearchTermsController < Admin::ResourceController

  def fetch_all
    @search_term = SearchTerm.find(params[:id])
    @search_term.fetch_all
    redirect_to :action => :index
  end

end
