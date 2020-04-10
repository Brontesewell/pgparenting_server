class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:index, :create, :update]
    skip_before_action :authorized, only: [:update, :create]
    # protect_from_forgery prepend: true, with: :exception


    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end 

    def create
        # byebug
        user = User.create(user_params)
        if user.valid?
            token = encode_token(user_id: user.id)
            render json: { user: UserSerializer.new(user), jwt: token }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def update
        # byebug
        user = User.find(params[:id])

        if user.update!(user_params)
            render json: user
        else
            render json: {error: "Something went wrong"}
        end
    end

    def destroy
        user = User.find(params[:id])
        if user.destroy
            render json: {message: "Successfully deleted user"}
        else
            render json: {error: "Something went wrong"}
        end
    end




    private

    def user_params
        params.require(:user).permit(:id, :first_name, :last_name, :email, :password, :subscribe)
    end

end