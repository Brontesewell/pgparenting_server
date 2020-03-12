class CatagorySubCatagoriesController < ApplicationController

    skip_before_action :authorized
    
    def create
        catagorysubcatagory = CatagorySubCatagory.new(collection_params)
        if catagorysubcatagory.save
        render json: catagorysubcatagory
        else
            render json: {error: "Something went wrong"}
        end
    end

    def destroy
        catagorysubcatagory = CatagorySubCatagory.find(params[:id])
        if catagorysubcatagory.destroy
            render json: {message: "Successfully deleted"} 
        else
            render json: {error: "Something went wrong"}
        end
    end


end