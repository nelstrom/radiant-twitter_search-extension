# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application'

class TwitterSearchExtension < Radiant::Extension
  version "1.0"
  description "Describe your extension here"
  url "http://yourwebsite.com/twitter_search"
  
  # define_routes do |map|
  #   map.namespace :admin, :member => { :remove => :get } do |admin|
  #     admin.resources :twitter_search
  #   end
  # end
  
  def activate
    # admin.tabs.add "Twitter Search", "/admin/twitter_search", :after => "Layouts", :visibility => [:all]
  end
  
  def deactivate
    # admin.tabs.remove "Twitter Search"
  end
  
end
