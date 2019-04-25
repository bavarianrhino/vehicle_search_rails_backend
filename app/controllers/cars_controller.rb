class CarsController < ApplicationController
    def index
        @cars = Car.all
        render json: @cars, status: :ok
    end

    def create
        @car = Car.new(car_params)
        if @car && @car.valid?
            @car.save
            render json: @car, status: :created
        else
            render json: { error: @car.errors.full_messages }, status: :not_acceptable
        end
    end

    def update
        @car = Car.find(params[:id])
        if @car.update(car_params)
            render json: @car, status: :accepted
        else
            render json: {error: @car.errors.full_messages }, status: :unprocessible_entity
        end
    end

    def destroy
        @car = Car.find(params[:id])
        if @car.destroy
            render json: {}, status: :no_content
        else
            render json: {error: @car.errors.full_messages }, status: :unprocessible_entity
        end
    end 


    private
    def car_params
        params.permit(:name, :up, :down, :left, :right, :max_fuel, :tread_wear, :health, :user_id)
    end
end