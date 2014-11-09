class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @locations = Location.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @locations }
      format.json { render :json => @locations }
    end
  end

  def show
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @location }
      format.json { render :json => @location }
    end
  end

  def new
    @location = Location.new
    respond_with(@location)
  end

  def edit
  end

  def create
    @location = Location.new(location_params)
    @location.save
    respond_with(@location)
  end

  def update
    @location.update(location_params)
    respond_with(@location)
  end

  def destroy
    @location.destroy
    respond_with(@location)
  end

  private
    def set_location
      @location = Location.find(params[:id])
    end

    def location_params
      params.require(:location).permit(:map_id, :superlocation_id, :name, :type, :string, :notes, :image)
    end
end
