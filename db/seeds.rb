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

Car.create(make: "BMW",
    model: "540i",
    year: 1995,
    vin: "K03NSF23KWFE0NK10DSF")

Car.create(make: "BMW",
    model: "525i",
    year: 1995,
    vin: "23NOI23NOF9ENWERO31")

Car.create(make: "Volkswagen",
    model: "Type 2 Camper",
    year: 1973,
    vin: "9239023N4NOKKFW0WKONJ")

Car.create(make: "Volkswagen",
    model: "Type 2 Double Cab",
    year: 1967,
    vin: "923BKJ09FJNOK3IONQ3OI")




s1 = Favorite.create( user_id: 1, car_id: 1)
s2 = Favorite.create( user_id: 1, car_id: 2)
s11 = Favorite.create( user_id: 2, car_id: 1)
s12 = Favorite.create( user_id: 2, car_id: 2)
s13 = Favorite.create( user_id: 2, car_id: 3)
s11 = Favorite.create( user_id: 3, car_id: 2)
s12 = Favorite.create( user_id: 3, car_id: 3)
s13 = Favorite.create( user_id: 3, car_id: 4)