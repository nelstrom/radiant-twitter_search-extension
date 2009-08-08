namespace :radiant do
  namespace :extensions do
    namespace :twitter_search do
      
      desc "Runs the migration of the Twitter Search extension"
      task :migrate => :environment do
        require 'radiant/extension_migrator'
        if ENV["VERSION"]
          TwitterSearchExtension.migrator.migrate(ENV["VERSION"].to_i)
        else
          TwitterSearchExtension.migrator.migrate
        end
      end
      
      desc "Copies public assets of the Twitter Search to the instance public/ directory."
      task :update => :environment do
        is_svn_or_dir = proc {|path| path =~ /\.svn/ || File.directory?(path) }
        puts "Copying assets from TwitterSearchExtension"
        Dir[TwitterSearchExtension.root + "/public/**/*"].reject(&is_svn_or_dir).each do |file|
          path = file.sub(TwitterSearchExtension.root, '')
          directory = File.dirname(path)
          mkdir_p RAILS_ROOT + directory
          cp file, RAILS_ROOT + path
        end
      end  
    end
  end
end
