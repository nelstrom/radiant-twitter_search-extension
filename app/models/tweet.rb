class Tweet < ActiveRecord::Base

  ATTR_MAP = {
          #  :from_twitter      => :to_local_database
             :id                => :twitter_id,
             :text              => :text,
             :from_user         => :from_user_name,
             :from_user_id      => :from_user_id,
             :created_at        => :created_at
           }

  # create a new record from Twitter status data
  def self.create_from_twitter(status_data)
    s = self.new
    ATTR_MAP.each { |k,v| s.send("#{v.to_s}=", status_data.send(k)) }
    s.save
    s
  end

end
