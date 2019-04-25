class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]

    # THIS IS HERE FOR DEBUGGING ONLY
    def index
        @users = User.all
        render json: @users.user_json, status: :ok
    end

    # def show
    #   @user = User.find(params[:id])
    #   render json: @user.user_json, status: :ok
    # end

    def profile
        # binding.pry
        render json: { user: current_user.user_json }
        # render json: { user: current_user.user }
    end

    def create
        @user = User.new(user_params)
        if @user && @user.valid?
            @user.save
            @token = encode_token(user_id: @user.id)
            render json: { user: @user, jwt: @token }, status: :created
        else
            render json: { error: @user.errors.full_messages }, status: :not_acceptable
        end
    end


    private
    def user_params
        params.permit(:username, :password, :password_confirmation)
  end
end
