class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @rooms = Room.all
  end

  def dashboard
    @rooms = current_user.rooms
    @bookings = current_user.bookings
    @bookings_as_owner = current_user.bookings_as_owner
  end

end
