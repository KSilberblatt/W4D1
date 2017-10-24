# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

real_kevin = User.new(name: "kevin l", email: "sportsguy12592@aol.com")
fake_kevin = User.new(name: "kevin s", email: "ladytroubles@yahoo.com")

old_reliable = Artwork.new(title: "old reliable", image_url: "idkd", artist_id: 1)
starry_night = Artwork.new(title: "starry night", image_url: "jdklsf", artist_id: 2)

share1 = ArtworkShare.new(viewer_id:2, artwork_id: 1)
share2 = ArtworkShare.new(viewer_id:1, artwork_id: 2)
