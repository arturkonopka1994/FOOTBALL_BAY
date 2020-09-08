class BookingsController < ApplicationController
  def new
    @match = Match.find(params[:match_id])
    @user = current_user
    @booking = Booking.new
  end

  def create
    @match = Match.find(params[:match_id])
    @booking = Booking.new
    @booking.match = @match
    @booking.user = current_user
    if @booking.save! && @match.spots_available?
      redirect_to dashboard_path
    else
      flash[:notice] = "Fully booked"
      redirect_to matches_path
    end
  end

  def destroy
    @match = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end
end
