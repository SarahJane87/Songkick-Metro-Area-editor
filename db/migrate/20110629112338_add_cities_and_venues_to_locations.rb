class AddCitiesAndVenuesToLocations < ActiveRecord::Migration
  def self.up
  	add_column :locations, :cities, :integer
  	add_column :locations, :venues, :integer
  end

  def self.down
  	remove_column :locations, :cities
  	remove_column :locations, :venues
  end
end
