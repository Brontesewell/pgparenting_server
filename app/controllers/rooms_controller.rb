class RoomsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:index, :show]
    skip_before_action :authorized, only: [:index, :show]
    def index
        rooms = Room.all
        render json: RoomSerializer.new(rooms)
    end

    def show
        room = Room.find(params[:id])
        render json: RoomSerializer.new(room)
    end
end