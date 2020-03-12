class CourseCatagoriesController < ApplicationController

    skip_before_action :authorized

    def create
        course_catagories = CourseCatagory.new(course_catagory_params)
        if course_catagories.save
        render json: course_catagories
        else
            render json: {error: "Something went wrong"}
        end
    end

    def destroy
        course_catagories = CourseCatagory.find(params[:id])
        if course_catagories.destroy
            render json: {message: "Successfully deleted Child"} 
        else
            render json: {error: "Something went wrong"}
        end
    end

    private

    def course_catagories_params
        params.require(:course_catagories).permit(:course_id, :catagory_id)
    end

end