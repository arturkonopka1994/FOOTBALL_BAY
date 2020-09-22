class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    # @matches_first = Match.first(5)
    @matches_first = Match.select{ |match| match.start_time >= DateTime.now }.first(5)
    @matches_last = Match.select{ |match| match.start_time >= DateTime.now }.last(5)
  end

  def dashboard
    @booked_matches = Booking.where(user:current_user).select{ |booking| booking.match.start_time > DateTime.now }
    
    @past_bookings = Booking.where(user:current_user).select{ |booking| booking.match.start_time < DateTime.now }
    
    
  end

end
