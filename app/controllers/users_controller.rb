class UsersController < ApplicationController

    before_action :check_manager_role, except: [:index, :new, :create]

  def index
      @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(set_params)
    @room.user = current_user
    @room.save
  end

  def show
    @room = Room.find(params[:id])
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    @room = Room.update(set_params)
    @room.save
    redirect_to room_path(@room)
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    redirect_to rooms_path, status: :see_other
  end

  private

  def check_manager_role
    unless current_user.manager?
      reidrect_to root_path, alert: "You are not allowed to access this"
    end
  end


  def set_params
    params.require(:room).permit(:name, :address, :price, :description, :photo)
  end

end
