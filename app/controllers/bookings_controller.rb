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
      session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
          name: @match.id,
          amount: @match.venue.price_cents,
          currency: 'gbp',
          quantity: 1
        }],
        success_url: booking_url(@booking),
        cancel_url: new_match_booking_url(@match)
        )
      @booking.update(checkout_session_id: session.id)
      redirect_to new_booking_payment_path(@booking)
    else
      flash[:notice] = "Fully booked"
      redirect_to matches_path
    end
  end

  def show
    @booking = current_user.bookings.find(params[:id])
  end

  def destroy
    @match = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end
end
