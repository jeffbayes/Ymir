class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @characters = Character.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @characters }
      format.json { render :json => @characters }
    end
  end

  def show
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @character }
      format.json { render :json => @character }
    end
  end

  def new
    @character = Character.new
    respond_with(@character)
  end

  def edit
  end

  def create
    @character = Character.new(character_params)
    @character.save
    respond_with(@character)
  end

  def update
    @character.update(character_params)
    respond_with(@character)
  end

  def destroy
    @character.destroy
    respond_with(@character)
  end

  private
    def set_character
      @character = Character.find(params[:id])
    end

    def character_params
      params.require(:character).permit(:user_id, :campaign_id, :role, :name, :notes)
    end
end
