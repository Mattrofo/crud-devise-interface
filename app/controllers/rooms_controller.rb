class RoomsController < ApplicationController

  def index
    @rooms = policy_scope(Room)
    if params[:query].present?
    @rooms = Room.search_by_address_and_price(params[:query])
    end
  end

  def show
    @booking = Booking.new
    @room = Room.find(params[:id])
    authorize @room
  end

  def new
    @room = Room.new
    authorize @room
  end

  def create
    @room = Room.new(set_params)
    @room.user = current_user
    authorize @room
    if @room.save
      redirect_to room_path(@room)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @room = Room.find(params[:id])
    authorize @room
  end

  def update
    @room = Room.find(params[:id])
    @room.update(set_params)
    authorize @room
    @room.save
    redirect_to room_path(@room)
  end

  def destroy
    @room = Room.find(params[:id])
    authorize @room
    @room.destroy
    redirect_to rooms_path, status: :see_other
  end

  private

  def set_params
    params.require(:room).permit(:name, :address, :price, :description, :photo)
  end


end
