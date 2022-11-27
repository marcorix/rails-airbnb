puts "Cleaning DB"
Flat.destroy_all
User.destroy_all

puts "Creating Users"
user1 = User.create!(email: "marco@gmail.com", password: "qwerty")
user2 = User.create!(email: "giorgio@gmail.com", password: "qwerty")
user3 = User.create!(email: "alex@gmail.com", password: "qwerty")

puts "Creating Flats"

flat = Flat.create!(
  name: "Apartment in Montalcino",
  address: "Via Bellaria, 7, 53024 Montalcino SI, Italy",
  bedrooms: 5,
  user: user2
)

flat = Flat.create!(
  name: "Villa in Capri",
  address: "Via Tragara, 24, 80076 Capri NA, Italy",
  bedrooms: 8,
  user: user3
)

flat = Flat.create!(
  name: "Flat in Lake Como",
  address: "Viale Giancarlo Puecher, 4, 22100 Como CO, Italy",
  bedrooms: 4,
  user: user3
)

puts "Done!"
