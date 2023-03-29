require 'open-uri'

p "------ Starting creating data ----------"
User.destroy_all
p "------ All users Destroyed ----------"
Room.destroy_all
p "------ All rooms Destroyed ----------"
user1 = User.create(email: "mathieu@gmail.com", password: "coucou", name: "Mathieu")
user2 = User.create(email: "dorian@gmail.com", password: "coucou", name: "Dorian")
user3 = User.create(email: "jernito@gmail.com", password: "coucou", name: "Jernito")
user4 = User.create(email: "eva@gmail.com", password: "coucou", name: "Eva")


file = URI.open("app/assets/images/Dorian.jpeg")
user2.photo.attach(io: file, filename: "Dorian.jpeg", content_type: "image/jpeg")
user2.save

file = URI.open("app/assets/images/Eva.jpeg")
user4.photo.attach(io: file, filename: "Eva.jpeg", content_type: "image/jpeg")
user4.save

file = URI.open("app/assets/images/Jernito.jpeg")
user3.photo.attach(io: file, filename: "Jernito.jpeg", content_type: "image/jpeg")
user3.save

file = URI.open("app/assets/images/Mathieu.jpeg")
user1.photo.attach(io: file, filename: "Mathieu.jpeg", content_type: "image/jpeg")
user1.save

p "------ #{User.count} user created ----------"

file = URI.open("https://images.unsplash.com/photo-1526308422422-6a57b9567eff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80")
room = Room.new(name: "Lama in peru", address: "South-America", price: 200, description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de
l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.",  user: user1)
room.photo.attach(io: file, filename: "manoir.png", content_type: "image/png")
room.save


file = URI.open("https://images.unsplash.com/photo-1529451310546-178d75816ffc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1348&q=80")
room = Room.new(name: "kango dudu", address: "Australia", price: 250, description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de
l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.", user: user2)
room.photo.attach(io: file, filename: "kango dudu.png", content_type: "image/png")
room.save



file = URI.open("https://images.unsplash.com/photo-1520491417561-88c817c63414?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1588&q=80")
room = Room.new(name: "Bird is coming", address: "North-Asia", price: 150, description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de
l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.", user: user3)
room.photo.attach(io: file, filename: "bird is coming.png", content_type: "image/png")
room.save


file = URI.open("https://images.unsplash.com/photo-1618080206739-14e8ac105472?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1636&q=80")
room = Room.new(name: "Milky cow", address: "Europe", price: 50, description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de
l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.", user: user4)
room.photo.attach(io: file, filename: "Milky cow.png", content_type: "image/png")
room.save

file = URI.open("https://images.unsplash.com/photo-1503656142023-618e7d1f435a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1589&q=80")
room = Room.new(name: "Savage Zebra", address: "Africa", price: 150, description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de
l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.",  user: user1)
room.photo.attach(io: file, filename: "Savage Zebra.png", content_type: "image/png")
room.save


file = URI.open("https://images.unsplash.com/photo-1515914560649-8fe5d631aa62?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3270&q=80")
room = Room.new(name: "Sunny Giraffe", address: "Africa", price: 200, description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de
l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.", user: user2)
room.photo.attach(io: file, filename: "Sunny Giraffe.png", content_type: "image/png")
room.save



file = URI.open("https://images.unsplash.com/photo-1577980888576-4ba53bae1c69?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1587&q=80")
room = Room.new(name: "1", address: "17 avenue du général de gaulle, lille", price: 50, description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de
l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.", user: user3)
room.photo.attach(io: file, filename: "chicour.png", content_type: "image/png")
room.save


file = URI.open("https://images.unsplash.com/photo-1603632076161-5836b146638c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1664&q=80")
room = Room.new(name: "2", address: "2 rue du terroir, Lille", price: 300, description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de
l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.", user: user4)
room.photo.attach(io: file, filename: "adoree.png", content_type: "image/png")
room.save

# Room.create(titre: "le manoir", address: "13 rue du chemin vert, Boulogne-sur-mer", price: 150, user: user1)
file = URI.open("https://images.unsplash.com/photo-1568805778598-fcb2852dbac1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1587&q=80")
room = Room.new(name: "3", address: "13 rue du chemin vert, Boulogne-sur-mer", price: 150, description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de
l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.",  user: user1)
room.photo.attach(io: file, filename: "manoir.png", content_type: "image/png")
room.save


file = URI.open("https://images.unsplash.com/photo-1614301515930-d569cd374e3e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1636&q=80")
room = Room.new(name: "4", address: "3 avenue de la serane, Marseille", price: 200, description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de
l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.", user: user2)
room.photo.attach(io: file, filename: "chef.png", content_type: "image/png")
room.save


file = URI.open("https://images.unsplash.com/photo-1619038826524-70b7158a4f7d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1635&q=80")
room = Room.new(name: "5", address: "17 avenue du général de gaulle, lille", price: 50, description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de
l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.", user: user3)
room.photo.attach(io: file, filename: "chicour.png", content_type: "image/png")
room.save


file = URI.open("https://images.unsplash.com/photo-1619726578922-8d4b82b098e1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1587&q=80")
room = Room.new(name: "6", address: "2 rue du terroir, Lille", price: 300, description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de
l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.", user: user4)
room.photo.attach(io: file, filename: "adoree.png", content_type: "image/png")
room.save

file = URI.open("https://images.unsplash.com/photo-1541518529671-aaeae36f21b2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1664&q=80")
room = Room.new(name: "7", address: "13 rue du chemin vert, Boulogne-sur-mer", price: 150, description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de
l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.",  user: user1)
room.photo.attach(io: file, filename: "manoir.png", content_type: "image/png")
room.save


file = URI.open("https://images.unsplash.com/photo-1660866838629-8ababef9dab8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1587&q=80")
room = Room.new(name: "8", address: "3 avenue de la serane, Marseille", price: 200, description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de
l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.", user: user2)
room.photo.attach(io: file, filename: "chef.png", content_type: "image/png")
room.save


file = URI.open("https://images.unsplash.com/photo-1677177934157-4b533090246e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1587&q=80")
room = Room.new(name: "9", address: "17 avenue du général de gaulle, lille", price: 50, description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de
l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.", user: user3)
room.photo.attach(io: file, filename: "chicour.png", content_type: "image/png")
room.save


file = URI.open("https://images.unsplash.com/photo-1567773616511-ff8dcf74c125?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1587&q=80")
room = Room.new(name: "10", address: "2 rue du terroir, Lille", price: 300, description: "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de
l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte.", user: user4)
room.photo.attach(io: file, filename: "adoree.png", content_type: "image/png")
room.save


p "------ #{Room.count} room created ----------"
