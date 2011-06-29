class LocationsController < ApplicationController

include LocationsHelper
	
	def arrayofhash(object)
		object.all.collect do |item|
			item.attributes.to_options	
		end
	end
			
	def index
    	@locations = Location.all
    	@markers = arrayofhash(Location).to_json
	end

	def deletevictim
  		@location = Location.destroy_all(:metroid => params[:metroid])
  		render :nothing => true
	end
	
	def mergemetros
		http = Net::HTTP.new("staging.songkick.net")
		headers ={PRIVATE!}
		resp, d = http.post("/admin/metro_area_merges?return_url='dsf'", "target_metro_area_id=" + params[:survivermetroid] + "&metro_area_id[" + params[:survivermetroid] + "]=on&metro_area_id[" + params[:victimmetroid] + "]=on", headers)
		render :nothing => true
		rescue Exception => e
			flash[:error] = e.message
			redirect_to :action => 'index'
	end
	
end

=begin
  # GET /locations/1
  # GET /locations/1.xml
  def show
    @location = Location.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @location }
    end
  end

  # GET /locations/new
  # GET /locations/new.xml
  def new
    @location = Location.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @location }
    end
  end

  # GET /locations/1/edit
  def edit
    @location = Location.find(params[:id])
  end

  # POST /locations
  # POST /locations.xml
  def create
    @location = Location.new(params[:location])

    respond_to do |format|
      if @location.save
        format.html { redirect_to(@location, :notice => 'Location was successfully created.') }
        format.xml  { render :xml => @location, :status => :created, :location => @location }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @location.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /locations/1
  # PUT /locations/1.xml
  def update
    @location = Location.find(params[:id])

    respond_to do |format|
      if @location.update_attributes(params[:location])
        format.html { redirect_to(@location, :notice => 'Location was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @location.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.xml
  def destroy
  
  
    @location = Location.find(params[:id])
    @location.destroy

    respond_to do |format|
      format.html { redirect_to(locations_url) }
      format.xml  { head :ok }
    end
  end
  
=end
