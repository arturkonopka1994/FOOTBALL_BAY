class BookingsController < ApplicationController
  def new
    @match = Match.find(params[:match_id])
    @user = User.find(params[:user_id])
    @booking = Booking.new

  def create
    @match = Match.find(params[:match_id])
    @booking = Booking.new(booking_params)
    @booking.match = @match
    @booking.user = current_user
    if @booking.save!
      redirect_to match_path(@match)
    else
      render 'new'
  end

  def destroy
    @match = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
