class CatagoriesController < ApplicationController

    skip_before_action :authorized

    def index
        @catagories = Catagory.all
        render :index
    end

    def show
        @catagory = Catagory.find(params[:id]) 
        render :show
    end

    private

    def catagory_params
        params.require(:catagory).permit(:id, :image, :catagory_name, :catagory_title, :description, :sub_catagories_attributes => [ :id, :title, :catagory_id], :courses_attributes => [ :id, :title, :content, :quote, :course_image, :sub_catagory_id, :catagory_id])
    end   
  end

end