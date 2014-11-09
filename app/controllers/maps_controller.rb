class MapsController < ApplicationController
  before_action :set_map, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @maps = Map.all
    respond_with(@maps)
  end

  def show
    respond_with(@map)
  end

  def new
    @map = Map.new
    respond_with(@map)
  end

  def edit
  end

  def create
    @map = Map.new(map_params)
    @map.save
    respond_with(@map)
  end

  def update
    @map.update(map_params)
    respond_with(@map)
  end

  def destroy
    @map.destroy
    respond_with(@map)
  end

  private
    def set_map
      @map = Map.find(params[:id])
    end

    def map_params
      params.require(:map).permit(:campaign_id, :notes)
    end
end
