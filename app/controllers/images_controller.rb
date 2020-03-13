class ImagesController < ApplicationController

    skip_before_action :verify_authenticity_token, :authorized

    def create
        image = Image.new(image_params)
        if image.save
        render json: image
        else
            render json: {error: "Something went wrong"}
        end
    end

    def destroy
        image = Image.find(params[:id])
        if image.destroy
            render json: {message: "Successfully deleted Image"} 
        else
            render json: {error: "Something went wrong"}
        end
    end

    private

    def images_params
        params.require(:image).permit(:image_url, :course_id)
    end

end