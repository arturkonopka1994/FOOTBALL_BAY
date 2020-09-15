class MatchesController < ApplicationController
  require 'rqrcode'
  # searching by keyword(city) if not present searching by radius of 10km
  def index
    # raise
    # if params[:query].present?
    #   @matches = Match.global_search(params[:query])
    #   if @matches == []
    #     @matches = Match.all
    #   else
    #     @matches
    #   end
    if params[:by_address].present?
      radius = params[:radius].present? ? params[:radius] : 10
      venues = Venue.near(params[:by_address], radius)
      @matches = []
      venues.each do |venue|
        venue.matches.each do |match|
          @matches << match
        end
      end
      if @matches == []
        @matches = Match.all
      end
      @matches
    else
      @matches = Match.all
    end
  end

  def show
    @match = Match.find(params[:id])
    @qr = RQRCode::QRCode.new( 'https://wa.me/447376676874', :size => 4, :level => :h )

    @venue = @match.venue
    @marker =
      [{
        lat: @venue.latitude,
        lng: @venue.longitude,
      }]
  end

  def new
    @match = Match.new
    if params["venue_id"]
      @venue = Venue.find(params["venue_id"])
    end
  end

  def create
    @match = Match.new(match_params)
    @match.user = current_user
    if params["venue_id"]
      @venue = Venue.find(params["match"]["venue_id"])
      @match.venue = @venue
    end
    if @match.save!
      redirect_to match_path(@match)
    else
      render 'new'
    end
  end

  def edit
    @match = Match.find(params[:id])
  end

  def update
    @match = Match.find(params[:id])
    @match.update(match_params)
    if @match.update(match_params)
      redirect_to match_path(@match)
    else
      render 'edit'
    end
  end

  def destroy
    @match = Match.find(params[:id])
    @match.destroy
    redirect_to matches_path
  end

  private

  def match_params
    params.require(:match).permit(:skill_level, :no_of_players, :start_time, :end_time,
    :description, :gender, :venue_id, :title, :photo)
  end
end
