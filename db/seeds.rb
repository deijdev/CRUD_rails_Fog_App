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

user1 = User.create(name: "T", email: "tzips@dd.com", password_digest: BCrypt::Password.create('password'), admin: true)
user2 = User.create(name: "Deijah", email: "dd@dd.com", password_digest: BCrypt::Password.create('password'), admin: true)
user3 = User.create(name: "Alex", email: "alexduterte@gmail.com", password_digest: BCrypt::Password.create('password'), admin: true)
user4 = User.create(name: "F1lthyN00B", email: "noob@noob.com", password_digest: BCrypt::Password.create('password'))


game1 = Game.create(title: "NBA2k20", img: "https://images.greenmangaming.com/bf2362b610e74fc3b79b44feb1553190/6a8ffa8d91e44dfa891cf20d8c224366.jpg")
game2 = Game.create(title: "Doom", img: "https://images.greenmangaming.com/e55c1f8dcad74eec911133e93609cf71/dcd1a7d6345f4bf88d6d4b7d96f134a7.jpg")
game3 = Game.create(title: "The Division 2", img: "https://images.greenmangaming.com/621af423456d4194bc8578b1ab05250b/897b18c633c74e72a0948ff57ac1a4cd.jpg")
game4 = Game.create(title: "Mariot Kart", img: "https://cdn-cf.gamivo.com/image_original.jpg?f=67253&n=a8e136b0-6331-11e9-ba4a-e3ae060f3896.jpg")
game5 = Game.create(title: "Animal Crossing", img: "https://i.ytimg.com/vi/sRWjpjNVOCM/maxresdefault.jpg")
game6 = Game.create(title: "Outlast", img: "https://images.greenmangaming.com/1edbba5771f74ffabb9b99ae97a09e09/3abdec6122ab427ab6c80607fdb4db1f.jpg")

lib1 = Library.create(user: user1, game: game1)
lib2 = Library.create(user: user1, game: game2)
lib3 = Library.create(user: user1, game: game3)
lib4 = Library.create(user: user2, game: game2)
lib5 = Library.create(user: user2, game: game3)
lib6 = Library.create(user: user2, game: game4)
lib7 = Library.create(user: user3, game: game3)
lib8 = Library.create(user: user3, game: game5)
lib9 = Library.create(user: user3, game: game6)