# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
	def csvtohash(filepath)
		file = File.open(filepath, "r")
		headers = file.readline().chomp!
		metros = []
		file.each_line do | line |
  			if !line.include? "NULL"
  				values = line.chomp.split(",")
  				place = Hash[:metroid,values[0],:name,values[1],:latitude,values[2], :longitude,values[3]]
  				Location.create(place)
  			end
		end
	end
	
	csvtohash("/Users/sarahskeete/Documents/rails/metro/app/models/metro.csv")