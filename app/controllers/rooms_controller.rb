class RoomsController < ApplicationController

  def index
    @rooms = Room.all
    if params[:query].present?
    @rooms = Room.search_by_address_and_price(params[:query])
    end
  end

  def show
    @booking = Booking.new
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(set_params)
    @room.user = current_user
    if @room.save
      redirect_to room_path(@room)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    @room.update(set_params)
    @room.save
    redirect_to room_path(@room)
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    redirect_to rooms_path, status: :see_other
  end

  private

  def set_params
    params.require(:room).permit(:name, :address, :price, :description, :photo)
  end


end
