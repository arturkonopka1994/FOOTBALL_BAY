class VenuesController < ApplicationController

  def index
    @venues = Venue.all
    @venues = Venue.geocoded

    @markers = @venues.map do |venue|
      {
        lat: venue.latitude,
        lng: venue.longitude
      }
    end
  end

  def show
    @venue = Venue.find(params[:id])
    @review = Review.new
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
    @venue.update(strong)
    if @venue.update(strong)
      redirect_to venue_path(@venue)
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
