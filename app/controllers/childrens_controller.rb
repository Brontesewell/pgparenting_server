class ChildrensController < ApplicationController

    skip_before_action :authorized

    def index
        @childrens = Children.all
        render :index
    end

    def show
        @children = Children.find(params[:id]) 
        render :show
    end

    def create
        children = Children.new(children_params)
        if children.save
        render json: children 
        else
            render json: {error: "Something went wrong"}
        end
    end

    def update
        children = Children.find(params[:id])
        if children.update(children_params)
        render json: children 
        else
            render json: {error: "Something went wrong"}
        end
    end

    def destroy
        children = Children.find(params[:id])
        if children.destroy
            render json: {message: "Successfully deleted Child"} 
        else
            render json: {error: "Something went wrong"}
        end
    end

    private

    def children_params
        params.require(:children).permit(:birthday, :name, :gender, :user_id)
    end

end