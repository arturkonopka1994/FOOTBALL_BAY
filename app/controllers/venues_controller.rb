class VenuesController < ApplicationController

  def index
    @venues = Venues.all
  end

  def show
    @venue = Venues.find(params[:id])
  end

  def new
    @venue = Venues.new
  end

  def create
    @venue = Venues.new(strong)
    @venue.user = current_user
    if @venue.save
      # redirect_to 
    else
      render 'new'    
  end

  def edit
    @venue = Venues.find(params[:id])
  end

  def update
    @venue = Venues.find(params[:id])
    if @venue.update(strong)
      # redirect_to
    else
      render 'edit'
    end
  end
  
  def destroy
    @venue = venue.find(params[:id])
    @venue.destroy
    # redirect_to
  end

  private

  def strong
    params.require(:venue).permit(:address_line_1, :address_line_2, :city, :postcode, :cost_per_hour, :name, :surface, :floodlit)
  end
end
