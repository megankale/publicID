namespace :db do
  desc "Load public ID's"
  task loadID: [:environment] do
    # iterate over each venues, and for each venue, and for each venue, change the name and save it
  Venue.all.each do |venue|
     venue.publicID = venue.name.parameterize + rand(10 ** 10).to_s.rjust(10,'0')
     venue.save
   end
  end
end
