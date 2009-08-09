module Admin::TweetsHelper
  def link_to_status_on_twitter(text, username, status_id)
    "<a href='http://twitter.com/#{username}/status/#{status_id}'>#{text}</a>"
  end
end
