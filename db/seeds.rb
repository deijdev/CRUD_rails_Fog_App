# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Game.destroy_all
Library.destroy_all

user1 = User.create(name: "T")
user2 = User.create(name: "Alex")
user3 = User.create(name: "Deijah")

game1 = Game.create(title: "NBA2k20")
game2 = Game.create(title: "Doom")
game3 = Game.create(title: "The Division 2")
game4 = Game.create(title: "Mariot Kart")
game5 = Game.create(title: "Animal Crossing")
game6 = Game.create(title: "Outlast")

lib1 = Library.create(user: user1, game: game1)
lib2 = Library.create(user: user1, game: game2)
lib3 = Library.create(user: user1, game: game3)
lib4 = Library.create(user: user2, game: game2)
lib5 = Library.create(user: user2, game: game3)
lib6 = Library.create(user: user2, game: game4)
lib7 = Library.create(user: user3, game: game3)
lib8 = Library.create(user: user3, game: game5)
lib9 = Library.create(user: user3, game: game6)