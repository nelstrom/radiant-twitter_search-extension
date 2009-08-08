# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class TwitterSearchExtension < Radiant::Extension
  version "0.1"
  description "Search Twitter, and save results in local database. Moderate, and publish them on your Radiant website."
  url "http://github.com/nelstrom/radiant-twitter_search-extension"
  
  define_routes do |map|
    map.namespace :admin, :member => { :remove => :get } do |admin|
      admin.resources :search_terms
    end
  end
  
  def activate
    admin.tabs.add "Twitter Searches", "/admin/search_terms", :after => "Layouts", :visibility => [:all]
  end
  
end
