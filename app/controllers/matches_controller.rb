class MatchesController < ApplicationController
  
  def index
    if params[:query].present?
      @matches = Match.joins(:venue).where("venues.city ILIKE ? ", "%#{params[:query]}%")
    else
      @matches = Match.all
    end
  end
  
  def show
    @match = Match.find(params[:id])
  end

  def new
    @match = Match.new
    @venue = Venue.find(params[:venue_id])    
  end

  def create
    @match = Match.new(match_params)
    @match.venue = Venue.find(params[:venue_id])  
    @match.user = current_user
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
    :description, :gender, :venue)
  end  
  
end
