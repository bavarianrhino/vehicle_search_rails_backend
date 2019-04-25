class FavoritesController < ApplicationController
    skip_before_action :authorized, only: [:index]

    def index
        @favorites = Favorite.all
        render json: @favorites.favorite_json, status: :ok
        # render json: @favorites, status: :ok
    end

    def create
        @favorite = Favorite.new(favorite_params)
        if @favorite && @favorite.valid?
            @favorite.save
            render json: @favorite, status: :created
        else
            render json: { error: "Failed to create favorite" }, status: :not_acceptable
        end
    end


    private
    def favorite_params
        params.permit(:user_id, :car_id)
    end
end
