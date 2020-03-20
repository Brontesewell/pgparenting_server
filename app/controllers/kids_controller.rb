class KidsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:index, :create, :update]
    skip_before_action :authorized, only: [:update]

    def index
        @kids = Kid.all
        render json: @kids
    end

    def show
        @kid = Kid.find(params[:id]) 
        render json: @kid
    end

    def create
        kid = Kid.new(kid_params)
        if kid.save
        render json: kid 
        else
            render json: {error: "Something went wrong"}
        end
    end

    def update
        # byebug
        kid = Kid.find(params[:id])

        if kid.update!(kid_params)
            render json: kid
        else
            render json: {error: "Something went wrong"}
        end
    end

    def destroy
        kid = Kid.find(params[:id])
        if kid.destroy
            render json: {message: "Successfully deleted Child"} 
        else
            render json: {error: "Something went wrong"}
        end
    end

    private

    def kid_params
        params.require(:kid).permit(:id, :birthday, :name, :gender, :user_id)
    end

end