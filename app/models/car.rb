class Car < ApplicationRecord
    has_many :favorites
    has_many :users, through: :favorites, dependent: :destroy

    def car_json
        {
            id: self.id,
            model: self.model,
            make: self.make,
            year: self.year,
            api_id: self.api_id,
            url: self.url,
            vin: self.vin
            # scores: self.scores.where("user_id=?", self.user_id).score_json
            # scores: self.scores.where("user_id=?", self.user_id).collect(&:points)
        }
    end

    def self.car_json
        Car.all.collect { |u| u.car_json }
    end
end
