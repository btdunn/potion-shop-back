# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Potion.destroy_all

Potion.create([
  {name: "https://i.imgur.com/X1tXLJq.png", description: "Basic Mana Potion - Good for getting your magic back", price: 8},
  {name: "https://i.imgur.com/YTgxscU.png", description: "Fae Tonic - Goes well with Fae Gin", price: 10},
  {name: "https://i.imgur.com/P1RKuvk.png", description: "Serpentine Triple Dipper - For sharing", price: 18},
  {name: "https://i.imgur.com/xQxHIpd.png", description: "Potion of Higher Times - For when you feel low", price: 4},
  {name: "https://i.imgur.com/d7OqsCa.png", description: "Potion of Fond Feelings - Makes you or your client feel the love", price: 10},
  {name: "https://i.imgur.com/ednEOse.png", description: "Giga-Bee Honey - Harvested from the massive and dangerous Giga-Bee!", price: 20},
  {name: "https://i.imgur.com/jq1CfD3.png", description: "Bone Potion - For your bones", price: 12},
  {name: "https://i.imgur.com/PEnEE9e.png", description: "Reptilian Tequila - Its good luck to eat the snake", price: 22},
  {name: "https://i.imgur.com/YVPiQbL.png", description: "Mushroom Mixture - Deadly? Hallucingonic? Your guess is as good as mine", price: 13},
  {name: "https://i.imgur.com/1bVzjhP.png", description: "Flying Ointment - Rub this on you or your broom to fly! Dont ask whats in it", price: 11},
])