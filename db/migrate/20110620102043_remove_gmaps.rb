class RemoveGmaps < ActiveRecord::Migration
  def self.up
  	remove_column :locations, :gmaps
  end

  def self.down
  	add_column :locations, :gmaps, :boolean
  end
end