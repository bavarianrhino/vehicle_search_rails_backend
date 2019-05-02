class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :car

    def favorite_json
        {
            user_id: self.user_id,
            car_id: self.car_id
            # api_ids: self.car.when("car_id=?", self.car_id).car_json
            # username: self.user.username,
            # make: self.car.make,
            # model: self.car.model,
            # year: self.car.year,
            # url: self.car.url,
            # vin: self.car.vin,
        }
    end

    def favorite_api_json
        {
            # api_id: self.car.api_id,
            # url: self.car.url,
            # vin: self.car.vin
        }
    end

    def self.favorite_json
        # Favorite.all.collect { |f| f.favorite_json }
        Favorite.all.collect(&:favorite_json)
    end

    def self.favorite_api_json
        # Favorite.all.collect { |f| f.favorite_json }
        Favorite.all.collect(&:favorite_json)
    end

    def self.all_json
        # Favorite.all.collect { |f| f.favorite_json }
        Favorite.all.collect(&:favorite_json)
    end
end
