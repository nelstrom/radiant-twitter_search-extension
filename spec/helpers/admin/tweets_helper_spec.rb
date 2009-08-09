require File.dirname(__FILE__) + '/../../spec_helper'

describe Admin::TweetsHelper do
  
  #Delete this example and add some real ones or delete this file
  it "should include the Admin::TweetsHelper" do
    included_modules = self.metaclass.send :included_modules
    included_modules.should include(Admin::TweetsHelper)
  end
  
end
