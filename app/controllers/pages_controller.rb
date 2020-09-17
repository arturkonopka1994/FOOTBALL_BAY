class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    # @matches_first = Match.first(5)
    @matches_first = Match.select{ |match| match.start_time >= DateTime.now }
    @matches_last = Match.last(5)
  end

  def dashboard
  end

end
