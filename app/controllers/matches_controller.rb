class MatchesController < ApplicationController
  def index
    @matches = Match.all  
  end
  
  def show    
  end

  def new
    @matches = Match.all    
  end

  def create
    @match = Match.new(match_params)
    if @match.save
      redirect_to match_path(@match)
    else
      render 'new'
  end
end

  def edit
  end

  def update
    if @match.update(match_params)
      redirect_to match_path(@match)
    else
      render 'edit'  
    end
  end

  def destroy
    @match.destroy
    redirect_to matches_path
  end

  private

  def set_match
    @match = Match.find(params [:id])
  end

  def match_params
    params.require(:match).permit(:skill_level, :no_of_players, :start_time, :end_time,
    :match_description, :gender)
  end  
  
end
