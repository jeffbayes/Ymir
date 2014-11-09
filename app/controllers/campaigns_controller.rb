class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @campaigns = Campaign.all
    respond_with(@campaigns)
  end

  def show
    respond_with(@campaign)
  end

  def new
    @campaign = Campaign.new
    respond_with(@campaign)
  end

  def edit
  end

  def create
    @campaign = Campaign.new(campaign_params)
    @campaign.save
    respond_with(@campaign)
  end

  def update
    @campaign.update(campaign_params)
    respond_with(@campaign)
  end

  def destroy
    @campaign.destroy
    respond_with(@campaign)
  end

  private
    def set_campaign
      @campaign = Campaign.find(params[:id])
    end

    def campaign_params
      params.require(:campaign).permit(:name, :notes)
    end
end
