class DestinationGrabber
require 'net/http'
require 'open-uri'
require 'json'

def destination_grab

  uri = URI.parse('https://socratadata.iot.in.gov/resource/6v98-qjgv.json')

  response = Net::HTTP.get_response(uri)

  data = JSON.parse(response.body)

  data.each do |info|

    Destination.create!()


end
