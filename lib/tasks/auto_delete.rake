desc "Delete all list items that were created more than 7 days ago."
task autodel: :environment do 
  Item.where("created_at <= ?", Time.now - 7.days).destroy_all
end