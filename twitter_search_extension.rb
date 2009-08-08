# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class TwitterSearchExtension < Radiant::Extension
  version "0.1"
  description "Search Twitter, and save results in local database. Moderate, and publish them on your Radiant website."
  url "http://github.com/nelstrom/radiant-twitter_search-extension"
  
  define_routes do |map|
    map.namespace :admin, :member => { :remove => :get } do |admin|
      admin.resources :twitter_search
    end
  end
  
  def activate
    admin.tabs.add "Twitter Searches", "/admin/twitter_search", :after => "Layouts", :visibility => [:all]
  end
  
end
