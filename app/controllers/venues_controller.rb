class VenuesController < ApplicationController

  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find(params[:id])
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(strong)
    if @venue.save
      redirect_to venues_path
    else
      render 'new'
    end  
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    @venue = Venue.find(params[:id])
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
    params.require(:venue).permit(:address_line_1, :address_line_2, :city, :postcode, :cost_per_hour, :name, :surface, :floodlit, :photo)
  end
end
