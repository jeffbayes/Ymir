class NpCsController < ApplicationController
  before_action :set_npc, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @npcs = Npc.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @npcs }
      format.json { render :json => @npcs }
    end
  end

  def show
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @npc }
      format.json { render :json => @npc }
    end
  end

  def new
    @npc = Npc.new
    respond_with(@npc)
  end

  def edit
  end

  def create
    @npc = Npc.new(npc_params)
    @npc.save
    respond_with(@npc)
  end

  def update
    @npc.update(npc_params)
    respond_with(@npc)
  end

  def destroy
    @npc.destroy
    respond_with(@npc)
  end

  private
    def set_npc
      @npc = Npc.find(params[:id])
    end

    def npc_params
      params.require(:npc).permit(:map_id, :location_id, :name, :notes, :character_sheet, :image)
    end
end
