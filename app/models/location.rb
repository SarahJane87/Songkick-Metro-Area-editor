class Location < ActiveRecord::Base

require 'net/http'
require 'uri'

before_save :generate_latitude
before_save :generate_longitude

def generate_latitude
	self.latitude = geocode[:latitude] if self.latitude.nil?
end

def generate_longitude
	self.longitude = geocode[:longitude] if self.longitude.nil?
end


def geocode
	lang = "en"; raw = false;
	geocoder = "http://maps.googleapis.com/maps/api/geocode/json?language=#{lang}&address="
	output = "&sensor=false"
	#send request to the google api to get the lat/lng
	request = geocoder + address + output
	url = URI.escape(request)
	resp = Net::HTTP.get_response(URI.parse(url))
	#parse result if result received properly
	if resp.is_a?(Net::HTTPSuccess)             
		#parse the json
		parse = JSON.parse(resp.body)
		#logger.debug "Google geocoding. Address: #{address}. Result: #{resp.body}"
		#check if google went well
		if parse["status"] == "OK"
			array = []
			parse["results"].each do |result|
			array << Hash[:latitude, result["geometry"]["location"]["lat"],
					:longitude, result["geometry"]["location"]["lng"],
					:address, result["formatted_address"]]
    		end
    		return array[0]
      	end
    end
end

end