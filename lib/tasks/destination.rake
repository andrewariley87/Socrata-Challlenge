require_relative "../get_destination"

namespace :destination do
  desc "TODO"
  task destination_load: :environment do
    destination = DestinationGrabber.new

    destination.destination_grab
  end

end
