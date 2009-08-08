require File.dirname(__FILE__) + '/../spec_helper'

describe SearchTerm do
  before(:each) do
    @search_term = SearchTerm.new
  end

  it "should be valid" do
    @search_term.should be_valid
  end
end
