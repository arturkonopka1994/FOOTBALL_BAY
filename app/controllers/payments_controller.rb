class PaymentsController < ApplicationController
  def new
    @booking = current_user.bookings.where(state: 'confirmed').find(params[:booking_id])
  end
end
