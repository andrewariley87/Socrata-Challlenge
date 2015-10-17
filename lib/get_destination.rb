require 'net/http'
require 'open-uri'
require 'json'

class DestinationGrabber

  def destination_grab

    uri = URI.parse('https://communities.socrata.com/resource/26hz-f9fq.json?$where=location_1 is not null and picture is not null and park_location is not null')

    response = Net::HTTP.get_response(uri)

    data = JSON.parse(response.body)
    puts data.inspect
    data.each do |info|

      if info["activities"].blank?
        @activities = "Lodging"
      else
        @activities = info["activities"]
      end


      Destination.create!(activities: @activities,
                          location: info["park_location"],
                          latitude: info["location_1"]["coordinates"][0],
                          longitude: info["location_1"]["coordinates"][1],
                          phone: info["phone"],
                          site: info["dnr_location"],
                          picture_url: info["picture"],
                          website_url: info["website"],
                          category: info["category"]
      )
    end
  end

end
