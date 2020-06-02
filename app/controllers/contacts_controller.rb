class ContactsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:index, :create, :show]
    skip_before_action :authorized, only: [:index, :create, :show]

    def index
      contacts = Contact.all
      render json: contacts
    end

    def show
        @contact = Contact.find(params[:id]) 
        render json: @contact
    end

    def create
        contact = Contact.new(contact_params)
        if contact.save
        render json: contact 
        else
            render json: {error: "Something went wrong"}
        end
    end
    
    private
    
    def contact_params
      params.require(:contact).permit(:id, :email, :f_name, :l_name, :description, :user_id)
    end
  end