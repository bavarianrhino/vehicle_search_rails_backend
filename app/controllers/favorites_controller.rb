class FavoritesController < ApplicationController
    before_action :authorized, except: [:create, :index]

    def index
        @favorites = Favorite.all
        # render json: @favorites.favorite_api_json, status: :ok
        render json: @favorites.all_json, status: :ok
        # render json: @favorites, status: :ok
    end

    def create
        # @favorite = Favorite.new(favorite_params)
        @favorite = current_user.favorites.build(favorite_params)
        if @favorite && @favorite.valid?
            @favorite.save
            render json: @favorite, status: :created
        else
            render json: { error: "Failed to create favorite" }, status: :not_acceptable
        end
    end

    def destroy
        current_user = User.find(favorite_params[:user_id])
        @favorite = current_user.favorites.find_by(car_id: favorite_params[:movie_id])
        if @favorite.destroy
            render json: @favorite, status: :no_content
        else
            render json: { error: "Failed to create delete" }, status: :not_acceptable
        end
    end 


    private
    def favorite_params
        params.permit(:user_id, :car_id)
    end
end
