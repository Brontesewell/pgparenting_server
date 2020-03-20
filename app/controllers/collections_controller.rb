class CollectionsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:index, :create, :destroy]
    skip_before_action :authorized, only: [:delete, :create]

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

    # def find_user_and_destroy
    #     byebug
    #     user_collection = Collection.find_by(user_id: params[:user_id])
    #     collect_to_delete = user_collection.find_by(course_id: params[:course_id])
    #     if collect_to_delete.destroy
    #         render json: {message: "Successfully deleted Users Collection"} 
    #     else
    #         render json: {error: "Something went wrong"}
    #     end
    # end

    def destroy
        # byebug
        user_collection = Collection.find_by!(course_id: params[:course_id])
        # collect_to_delete = user_collection.find_by!(user_id: params[:user_id])
        if user_collection.destroy
            render json: {message: "Successfully deleted Users Collection"} 
        else
            render json: {error: "Something went wrong"}
        end
    end


    private

    def collection_params
        params.require(:collection).permit(:id, :collected, :user_id, :course_id)
    end

end