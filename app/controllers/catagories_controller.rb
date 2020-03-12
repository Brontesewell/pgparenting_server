class CatagoriesController < ApplicationController

    skip_before_action :authorized

    def index
        @catagories = Catagory.all
        render :index
    end

    def show
        @catagory = Catagory.find(params[:id]) 
        render :show
    end


end