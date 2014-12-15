desc "Autodelete old items task called by the Heroku scheduler add-on"
  task :prune_list => :environment do
    Item.where("created_at <= ?", Time.now - 7.days).destroy_all
  end