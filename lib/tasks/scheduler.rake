desc "Autodelete old items task called by the Heroku scheduler add-on"
  task :update_feed => :environment do
    puts "Deleting old items..."
    Item.prune_list
    puts "done."
  end