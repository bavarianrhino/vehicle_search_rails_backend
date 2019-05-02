class CarsController < ApplicationController
    before_action :authorized, except: [:index, :create]

    def index
        @cars = Car.all
        render json: @cars, status: :ok
    end

    def create
		@car = Car.find_or_create_by!(make: car_params['make'], model: car_params['model'], year: car_params['year'], vin: car_params['vin'], api_id: car_params['api_id'], url: car_params['url'])
		if @car.save
			currentUser = User.find(car_params[:user_id])
			if currentUser.cars.any?{|car| car['vin'] === @car['vin']}
				render json: @car, status: :ok
			else 
				@car.users << currentUser
				render json: @car, status: :created
			end
		else
			render json: @car.errors.full_messages, status: :unprocessable_entity
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
        params.permit(:make, :model, :year, :vin, :user_id, :api_id, :url)
    end
end
# class CarsController < ApplicationController
#     def index
#         @cars = Car.all
#         render json: @cars, status: :ok
#     end

#     def create
#         @car = Car.new(car_params)
#         if @car && @car.valid?
#             @car.save
#             render json: @car, status: :created
#         else
#             render json: { error: @car.errors.full_messages }, status: :not_acceptable
#         end
#     end

#     def update
#         @car = Car.find(params[:id])
#         if @car.update(car_params)
#             render json: @car, status: :accepted
#         else
#             render json: {error: @car.errors.full_messages }, status: :unprocessible_entity
#         end
#     end

#     def destroy
#         @car = Car.find(params[:id])
#         if @car.destroy
#             render json: {}, status: :no_content
#         else
#             render json: {error: @car.errors.full_messages }, status: :unprocessible_entity
#         end
#     end 


#     private
#     def car_params
#         params.permit(:make, :model, :year, :vin)
#     end
# end