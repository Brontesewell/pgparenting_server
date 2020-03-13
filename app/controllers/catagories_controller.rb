class CatagoriesController < ApplicationController

    skip_before_action :verify_authenticity_token, :authorized

    def index
        @catagories = Catagory.all
        render json: @catagories
    end

    def show
        @catagory = Catagory.find(params[:id]) 
        render json: @catagory
    end

    private

    def catagory_params
        params.require(:catagory).permit(:id, :image, :catagory_name, :catagory_title, :description)
    end   


end