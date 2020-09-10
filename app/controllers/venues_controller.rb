class VenuesController < ApplicationController

  def index
    @venues = Venue.all
    @venues = Venue.geocoded

    @markers = @venues.map do |venue|
      {
        lat: venue.latitude,
        lng: venue.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { venue: venue })
      }
    end
  end

  def show
    @venue = Venue.find(params[:id])
    @review = Review.new
    @venues = Venue.geocoded
    @marker = 
      [{
        lat: @venue.latitude,
        lng: @venue.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { venue: @venue })
      }]
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
    params.require(:venue).permit(:address_line_1, :address_line_2, :city, :post_code, :cost_per_hour, :name, :surface, :floodlit, :photo)
  end
end
