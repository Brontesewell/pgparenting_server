class JournalsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:index, :create, :update, :destroy]
    skip_before_action :authorized, only: [:update]

    def index
        @journals = Journal.all
        render json: @journals
    end

    def show
        @journal = Journal.find(params[:id]) 
        render json: @journal
    end

    def create
        journal = Journal.new(journal_params)
        if journal.save
        render json: journal 
        else
            render json: {error: "Something went wrong"}
        end
    end

    def update
        # byebug
        journal = Journal.find(params[:id])

        if journal.update!(journal_params)
            render json: journal
        else
            render json: {error: "Something went wrong"}
        end
    end

    def destroy
        # byebug
        journal = Journal.find(params[:id])
        if journal.destroy
            render json: {message: "Successfully deleted Journal"} 
        else
            render json: {error: "Something went wrong"}
        end
    end

    private

    def journal_params
        params.require(:journal).permit(:id, :date_now, :text, :kid_id)
    end

end