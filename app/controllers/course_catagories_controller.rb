class CourseCatagoriesController < ApplicationController

    skip_before_action :authorized

    def create
        course_catagory = CourseCatagory.new(course_catagory_params)
        if course_catagory.save
        render json: course_catagory
        else
            render json: {error: "Something went wrong"}
        end
    end

    def destroy
        course_catagory = CourseCatagory.find(params[:id])
        if course_catagory.destroy
            render json: {message: "Successfully deleted Course Catagory"} 
        else
            render json: {error: "Something went wrong"}
        end
    end

    private

    def course_catagory_params
        params.require(:course_catagory).permit(:course_id, :catagory_id)
    end

end