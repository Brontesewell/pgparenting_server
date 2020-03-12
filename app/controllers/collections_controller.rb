class CollectionsController < ApplicationController

    skip_before_action :authorized
    def index
        @collections = Collection.all
        render json: @collections
    end

    def show
        @collection = Collection.find(params[:id])
        render json: @collection
    end


    def create
        collection = Collection.new(collection_params)
        if collection.save
        render json: collection
        else
            render json: {error: "Something went wrong"}
        end
    end

    def destroy
        collection = Collection.find(params[:id])
        if collection.destroy
            render json: {message: "Successfully deleted Collection"} 
        else
            render json: {error: "Something went wrong"}
        end
    end

    private

    def collection_params
        params.require(:collection).permit(:collected, :user_id, :course_id)
    end

end