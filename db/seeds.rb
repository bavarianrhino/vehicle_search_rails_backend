# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.create(username: "ryan", password: "1234")
u1 = User.create(username: "james", password: "1234")
u1 = User.create(username: "heather", password: "1234")

Car.create(make: "Make Missing",
    model: "Model Missing",
    year: 0,
    api_id: "WBAEF6326RCC89319-70fa0e1a-7587-4801-bb2a-e77e7477a70e",
    url: "http://www.realmusclecar.com/listings/1994-bmw-840ci-rare-8-series/",
    vin: "WBAEF6326RCC89319")

Car.create(make: "Make Missing",
    model: "Model Missing",
    year: 0,
    api_id: "WBSHD9315PBK06566-8b472c15-ae15-425f-8087-c5376b9b0860",
    url: "https://www.cosmomotorsonline.com/details-1993-bmw-5_series-m5-used-wbshd9315pbk06566.html",
    vin: "WBSHD9315PBK06566")

Car.create(make: "Make Missing",
    model: "Model Missing",
    year: 0,
    api_id: "WBAHJ6311PGD23420-6d129750-8a12-48dd-992d-fcac3646faad",
    url: "https://www.msnpreowned.com/1993-BMW-5-Series-North-Salem-NY-Ridgefield-Danbury-Brewster-Westchester/used_car/yWk9yq7AlAs%3d",
    vin: "WBAHJ6311PGD23420")

Car.create(make: "Make Missing",
    model: "Model Missing",
    year: 0,
    api_id: "WP0CB2966MS460459-b799a95f-b461-4040-8659-707384c2fd44",
    url: "https://www.motorcarstudio.com/vehicles/823/1991-porsche-911-carrera-cabriolet",
    vin: "WP0CB2966MS460459")

Car.create(make: "Make Missing",
    model: "Model Missing",
    year: 0,
    api_id: "WP0AB2963MS410349-1eac0a78-9731-45dc-89fc-223da5d55b99",
    url: "https://clients.automanager.com/020310/vehicle-details/1991-porsche-911-carrera-2-coupe-a1f0ac4e303744099f372718ad60465a?Framed=1",
    vin: "WP0AB2963MS410349")

Car.create(make: "Make Missing",
    model: "Model Missing",
    year: 0,
    api_id: "WBSHD9317MBK06032-1af1afd6-146e-4a67-a992-3974d527bc9d",
    url: "http://certifiedmotorsllc.com/inventory/30338/view/2012/",
    vin: "WBSHD9317MBK06032")

Car.create(make: "Make Missing",
    model: "Model Missing",
    year: 0,
    api_id: "WBSHD9316MBK05387-44b86dcf-e1fc-425f-b0cd-472d1a615420",
    url: "https://www.gaudinporschelv.com/used-Las+Vegas-1991-BMW-M5-Base-WBSHD9316MBK05387",
    vin: "WBSHD9316MBK05387")




s1 = Favorite.create( user_id: 1, car_id: 1)
s2 = Favorite.create( user_id: 1, car_id: 2)
s3 = Favorite.create( user_id: 1, car_id: 3)
s4 = Favorite.create( user_id: 1, car_id: 4)
s5 = Favorite.create( user_id: 1, car_id: 5)
s6 = Favorite.create( user_id: 1, car_id: 6)
s7 = Favorite.create( user_id: 1, car_id: 7)
s11 = Favorite.create( user_id: 2, car_id: 1)
s12 = Favorite.create( user_id: 2, car_id: 2)
s13 = Favorite.create( user_id: 2, car_id: 3)
s11 = Favorite.create( user_id: 3, car_id: 2)
s12 = Favorite.create( user_id: 3, car_id: 3)
s13 = Favorite.create( user_id: 3, car_id: 4)