class BookingsController < ApplicationController
  # def new
  #   @match = Match.find(params[:match_id])
  #   @user = User.find(params[:user_id])
  #   @booking = Booking.new
  # end

  def create
    @match = Match.find(params[:match_id])
    @booking = Booking.new
    @booking.match = @match
    @booking.user = current_user
    if @booking.save! && @match.spots_available?
      redirect_to match_path(@match)
    else
      flash[:notice] = "Fully booked"
      render 'match/show'
    end
  end

  def destroy
    @match = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end
end
