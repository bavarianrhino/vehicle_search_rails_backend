class FavoritesController < ApplicationController
    skip_before_action :authorized, only: [:index]

    def index
        @scores = Score.all
        # render json: @scores.score_json, status: :ok
        render json: @scores, status: :ok
    end

    def create
        @score = Score.new(score_params)
        if @score && @score.valid?
            @score.save
            render json: @score, status: :created
        else
            render json: { error: "failed to create score" }, status: :not_acceptable
        end
    end


    private
    def score_params
        params.permit(:user_id, :car_id)
    end
end
