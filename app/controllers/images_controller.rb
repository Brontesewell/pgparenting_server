class ImagesController < ApplicationController

    skip_before_action :authorized

    def create
        images = Image.new(image_params)
        if images.save
        render json: images
        else
            render json: {error: "Something went wrong"}
        end
    end

    def destroy
        images = Image.find(params[:id])
        if images.destroy
            render json: {message: "Successfully deleted Child"} 
        else
            render json: {error: "Something went wrong"}
        end
    end

    private

    def images_params
        params.require(:images).permit(:image_url)
    end

end