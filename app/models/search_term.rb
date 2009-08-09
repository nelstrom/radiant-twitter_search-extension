class SearchTerm < ActiveRecord::Base


  def fetch_all
    count               = 0
    requests_per_page   = 100
    page_number         = 1
    begin
      loop do
        puts "\nFetching page #{page_number}..."
        count_for_current_page = 0
        Twitter::Search.new(self.query).per_page(requests_per_page).page(page_number).each do |s|
          count_for_current_page += 1
          if exists = Tweet.find_by_twitter_id(s.id)
            # this status is already in the database.
            # Associate it with the current SearchTerm (if not already) and continue.
          else
            status = Tweet.create_from_twitter(s)
            puts status.text
            count += 1
          end
        end
        break if count_for_current_page < requests_per_page
        page_number += 1
      end
    rescue SocketError => e
      puts e
    end
  end

  def fetch_latest
  end

end
