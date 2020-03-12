class CoursesController < ApplicationController

    skip_before_action :authorized

    def index
        @courses = Course.all
        render json: @courses
    end

    def show
        @course = Course.find(params[:id]) 
        render json: @course
    end

    def create
        course = Course.new(course_params)
        if course.save
        render json: course 
        else
            render json: {error: "Something went wrong"}
        end
    end

    def update
        course = Course.find(params[:id])
        if course.update(course_params)
        render json: course 
        else
            render json: {error: "Something went wrong"}
        end
    end

    def destroy
        course = Course.find(params[:id])
        if course.destroy
            render json: {message: "Successfully deleted Course"} 
        else
            render json: {error: "Something went wrong"}
        end
    end

    private

    def course_params
        params.require(:course).permit(:title, :content, :quote, :course_image, :sub_catagory_id, :catagory_id)
    end

    

end