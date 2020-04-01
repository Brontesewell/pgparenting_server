class SubCatagoriesController < ApplicationController

    skip_before_action :verify_authenticity_token, :authorized

    def index
        @subcatagories = SubCatagory.all
        render json: @subcatagories
    end

    def show
        @subcatagory = SubCatagory.find(params[:id]) 
        render json: @subcatagory
    end

    
    def create
        subcatagory = SubCatagory.new(subcatagory_params)
        if subcatagory.save
            render json: subcatagory
        else
            render json: {error: "Something went wrong"}
        end
    end
    
    def update
        subcatagory = SubCatagory.find(params[:id])
        if subcatagory.update(subcatagory_params)
        render json: subcatagory 
        else
            render json: {error: "Something went wrong"}
        end
    end


    def destroy
        subcatagory = SubCatagory.find(params[:id])
        if subcatagory.destroy
            render json: {message: "Successfully deleted Sub Catagory"} 
        else
            render json: {error: "Something went wrong"}
        end
    end

    private

    # def sub_catagory_params
    #     params.require(:sub_catagory).permit(:title, :catagory_id)
    # end

    def subcatagory_params
        params.require(:subcatagory).permit(:id, :title)
    end  

end