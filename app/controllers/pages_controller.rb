class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if Rails.env.production?
      @country = request.location.country_code
      @city = request.location.city
      @post_code = request.location.postal_code
    end
  end

  def dashboard
  end
end
