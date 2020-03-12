class SubCatagoriesController < ApplicationController

    skip_before_action :authorized

    def index
        @sub_catagories = SubCatagory.all
        render :index
    end

    def show
        @sub_catagory = SubCatagory.find(params[:id]) 
        render :show
    end

    
    def create
        sub_catagory = SubCatagory.new(sub_catagory_params)
        if sub_catagory.save
            render json: sub_catagory
        else
            render json: {error: "Something went wrong"}
        end
    end
    
    def update
        sub_catagory = SubCatagory.find(params[:id])
        if sub_catagory.update(sub_catagory_params)
        render json: sub_catagory 
        else
            render json: {error: "Something went wrong"}
        end
    end


    def destroy
        sub_catagory = SubCatagory.find(params[:id])
        if sub_catagory.destroy
            render json: {message: "Successfully deleted Sub Catagory"} 
        else
            render json: {error: "Something went wrong"}
        end
    end

    private

    # def sub_catagory_params
    #     params.require(:sub_catagory).permit(:title, :catagory_id)
    # end

    def sub_catagory_params
        params.require(:sub_catagory).permit(:title, :courses_attributes => [ :id, :title, :content, :quote, :course_image, :sub_catagory_id, :catagory_id])
    end  

end