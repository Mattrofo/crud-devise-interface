require 'open-uri'

p "------ Starting creating data ----------"
User.destroy_all
p "------ All users Destroyed ----------"
Room.destroy_all
p "------ All rooms Destroyed ----------"
user1 = User.create(email: "mathieu@gmail.com", password: "123456", name: "Mathieu")
user2 = User.create(email: "dorian@gmail.com", password: "123456", name: "Dorian")
user3 = User.create(email: "jernito@gmail.com", password: "123456",name: "Jernito")
user4 = User.create(email: "eva@gmail.com", password: "123456", name: "Eva")


file = URI.open("app/assets/images/Dorian.jpeg")
user2.photo.attach(io: file, filename: "Dorian.jpeg", content_type: "image/jpeg")
user2.save

file = URI.open("app/assets/images/Eva.jpeg")
user4.photo.attach(io: file, filename: "Eva.jpeg", content_type: "image/jpeg")
user4.save

file = URI.open("app/assets/images/Jernito.jpeg")
user3.photo.attach(io: file, filename: "Jernito.jpeg", content_type: "image/jpeg")
user3.save

file = URI.open("app/assets/images/Mathieu rire.jpeg")
user1.photo.attach(io: file, filename: "Mathieu rire.jpeg", content_type: "image/jpeg")
user1.save

p "------ #{User.count} user created ----------"
# Room.create(titre: "le manoir", address: "13 rue du chemin vert, Boulogne-sur-mer", price: 150, user: user1)
file = URI.open("https://cdn-fr.priximbattable.net/402846-large_default/room-5-x-3m-toit-plat.jpg")
room = Room.new(name: "le manoir", address: "13 rue du chemin vert, Boulogne-sur-mer", price: 150, description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de
l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.",  user: user1)
room.photo.attach(io: file, filename: "manoir.png", content_type: "image/png")
room.save
# Room.create(name: "la place du chef", address: "3 avenue de la serane, Marseille", price: 200, user: user2)
file = URI.open("https://cdn-s-www.estrepublicain.fr/images/D72C5AFF-352C-400E-B322-A037903C2552/NW_raw/vous-n-avez-pas-de-double-taxe-d-habitation-a-payer-si-votre-room-est-situe-a-plus-de-1-km-de-votre-logement-illustration-adobe-stock-1636569236.jpg")
room = Room.new(name: "la place du chef", address: "3 avenue de la serane, Marseille", price: 200, description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de
l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.", user: user2)
room.photo.attach(io: file, filename: "chef.png", content_type: "image/png")
room.save


# Room.create(name: "la place du chicour", address: "17 avenue du général de gaulle, lille", price: 400, user: user2)
file = URI.open("https://www.virages.com/Images/Blog/Places-de-Parking.jpg")
room = Room.new(name: "la place du chicour", address: "17 avenue du général de gaulle, lille", price: 50, description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de
l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.", user: user2)
room.photo.attach(io: file, filename: "chicour.png", content_type: "image/png")
room.save
# Room.create(name: "le parking adoré", address: "2 rue du terroir, Lille", price: 300, user: user3)
file = URI.open("https://www.ambiances-bois.com/wp-content/uploads/2021/11/carport-toit-plat-bois-scaled.jpg")
room = Room.new(name: "le parking adoré", address: "2 rue du terroir, Lille", price: 300, description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de
l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.", user: user3)
room.photo.attach(io: file, filename: "adoree.png", content_type: "image/png")
room.save


p "------ #{Room.count} room created ----------"
