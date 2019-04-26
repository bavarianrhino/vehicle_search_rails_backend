class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :car

    def favorite_json
        {
            username: self.user.username,
            user_id: self.user_id,
            car: self.car.make,
            car: self.car.model,
            car: self.car.year,
            car: self.car.vin,
            car_id: self.car_id
        }
    end

    def self.favorite_json
        # Favorite.all.collect { |f| f.favorite_json }
        Favorite.all.collect(&:favorite_json)
    end
end
