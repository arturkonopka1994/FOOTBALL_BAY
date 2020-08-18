class PaymentsController < ApplicationController

  def new
    @payment = @booking.payments.new 
  end
end
