class User < ApplicationRecord
    has_many :favorites, dependent: :destroy
    has_many :cars, through: :favorites, dependent: :destroy
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }, presence: true
    validates :password, presence: true

    def user_json
        {
            id: self.id,
            username: self.username,
            cars: self.cars.car_json,
            favorites: self.cars.api_json
            # favorites: self.favorites.all_json
            # favorites: self.favorites.favorites_api_json,
            # high_score: self.high_score,
        }
    end

    # CHANGE TO FAVORITES
    # def high_score
        # self.scores.collect(&:points).max
        # self.scores.collect { |u| u.points }
    # end

    def self.user_json
        User.all.collect { |u| u.user_json }
    end
end
